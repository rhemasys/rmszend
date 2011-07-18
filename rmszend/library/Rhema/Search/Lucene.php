<?php

class Rhema_Search_Lucene {
    /**
     * Print messages
     * @var boolean
     */
    public $echoAddedRecords = false;
    
    /**
     * Do not add elements to the index, only read database
     * @var boolean
     */
    public $simulated = false;
    
    /**
     * number of records read at each loop to avoid timeouts
     */
    const RECORDS_BUFFER_SIZE = 250;
    
    /**
     * When new documents are added to a Lucene index, they are initially stored in memory instead of being immediately written to the disk.
     * This value tells Lucene how many documents to store in memory before writing them to the disk, as well as how often to merge multiple segments together.
     * With the default value of 10, Lucene will store 10 documents in memory before writing them to a single segment on the disk. The mergeFactor value of 10 also
     * means that once the number of segments on the disk has reached the power of 10, Lucene will merge these segments into a single segment.
     * For instance, if we set mergeFactor to 10, a new segment will be created on the disk for every
     * 10 documents added to the index. When the 10th segment of size 10 is added,
     * all 10 will be merged into a single segment of size 100. When 10 such segments of size 100
     * have been added, they will be merged into a single segment containing 1000 documents, and so on.
     * Therefore, at any time, there will be no more than 9 segments in each power of 10 index size.
     * see more details at http://onjava.com/pub/a/onjava/2003/03/05/lucene.html
     *
     */
    const MERGE_FACTOR = 8; //default 10
    

    /**
     * While merging segments, Lucene will ensure that no segment with more than maxMergeDocs is created.
     * For instance, if we set maxMergeDocs to 1000, when we add the 10,000th document, instead of merging
     * multiple segments into a single segment of size 10,000, Lucene will create a 10th segment of size 1000,
     * and keep adding segments of size 1000 for every 1000 documents added.
     */
    const MAX_MERGE_DOCS = 2147483647; //default PHP_INT_MAX = 2147483647;
    

    /**
     * Zend search index
     * @var \Zend_Search_Lucene_Proxy
     */
    protected $index = null;
    /**
     * path with indexes
     * @var string
     */
    protected $indexesDir;
    
    private static $instance = null;
    
    private $verboseMode = false;
    
    protected $options = array();
    
    public static $indexKey = 'affiliate_product_id';
    	
    const INDEX_STATUS_TO_UPDATE = 'to_update';
    const INDEX_STATUS_TO_INDEX  = 'to_index';
    const INDEX_STATUS_TO_DELETE = 'to_delete';
    const INDEX_STATUS_INDEXED   = 'indexed';
    const INDEX_STATUS_NO_INDEX  = 'no_index';

	const OPERATION_DELETE       = 'OPERATION_DELETE';
	const OPERATION_UPDATE       = 'OPERATION_UPDATE';
	const OPERATION_ADD          = 'OPERATION_ADD';
	
    /**
     * Singleton
     * @return Lucene
     */
    public static function getInstance(){
        if(self::$instance === null){
            self::$instance = new self();
        }
        return self::$instance;
    }
    
    /**
     * ctor: Saves settings internally from INI file.
     * Index is not YET opened (that should be done manually on-demand)
     */
    private function __construct(){
        $this->options = Rhema_SiteConfig::getConfig('search');
        $this->indexesDir = $this->options ['indexes_dir'];
    }
    /**
     * Open the index
     * In case of exception, check if the folder exists and is writable. 
     * @return \Zend_Search_Lucene_Interface
     */
    public function getIndex(){
        if($this->index === null){
            try{
                // if not opened in shm, open on disk
                if($this->index === null){
                    $this->index = Zend_Search_Lucene::open($this->indexesDir);
                }
                $this->index->setMaxMergeDocs(self::MAX_MERGE_DOCS);
                $this->index->setMergeFactor(self::MERGE_FACTOR);
            
            }catch(Zend_Search_Lucene_Exception $e){
                
                /*check if folder exists*/
                if(! file_exists($this->indexesDir)){
                    throw new Zend_Search_Exception("Directory {$this->indexesDir} does not exist");
                }
                /*check if folder is writable*/
                if(! is_writable($this->indexesDir)){
                    trigger_error("Directory {$this->indexesDir} is not writable", E_USER_WARNING);
                }
                
                /* create index if not exists and add some codes*/
                if(strpos($e->getMessage(), "Index doesn't exists") !== false){
                    throw new Zend_Search_Lucene_Exception("Index not found at [" . $this->indexesDir . "]. Create and add permissions.");
                }
                
                // any other exception
                throw new Zend_Search_Lucene_Exception($e->getMessage(), $e->getCode());
            }
        }
        return $this->index;
    }
    
    /**
     * Create index (no docs added with this function)
     * Called when index does not exist when opening
     */
    public function createIndex(){
        $this->index = Zend_Search_Lucene::create($this->indexesDir);
        echo "index created at {$this->indexesDir}\n";
    }
    
    /**
     * Update the Lucene index starting from the given timestamp.
     * At the end it updates the last modification time (read in the future by other function launched from cron job)
     * @param int $limit set to zero or null not to use any limit
     * @return array debug info
     * @throws \PDOException when mysql goes away :(
     */
    public function updateAll($limit = 0){
        // set `to_delete` for expired/archived/hidden/delete/unapproved codes
        list($codesRes, $storesRes) = $this->clean();
        #pd($codesRes, $storesRes);
        $this->_displayIfVerbose("{$codesRes[0]} codes and {$storesRes[0]} flagged to delete");
        
        $ret ['numberOfDocumentsBefore'] = $this->getIndex()->numDocs();
        $ret ['ItemsDeleted']            = $this->_doOperation(self::OPERATION_DELETE, self::INDEX_STATUS_TO_DELETE, self::INDEX_STATUS_NO_INDEX);
        $ret ['CodesToReindex']          = $this->_doOperation(self::OPERATION_DELETE, self::INDEX_STATUS_TO_UPDATE, self::INDEX_STATUS_TO_INDEX);
        $ret ['CodesIndex']              = $this->_doOperation(self::OPERATION_ADD,    self::INDEX_STATUS_TO_INDEX, self::INDEX_STATUS_INDEXED);
        $ret ['numberOfDocumentsAfter']  = $this->getIndex()->numDocs();
        $this->index->commit();
        
        return $ret;
    }
    
    private function _doOperation($operationType, $inputStatus, $newStatus){
        $daoFilter = new Rhema_Dao_Filter();
        $daoFilter->setModel(MODEL_PREFIX . 'AffiliateProduct')
                  ->setLimit(self::RECORDS_BUFFER_SIZE)
                  ->addCondition('index_status', $inputStatus);
        
         
        if($operationType == self::OPERATION_DELETE ){ 
            $daoFilter->addField('id');
        }else{
            $daoFilter->addCondition('is_archived', 0);
        }
        
        $startCount = Rhema_Model_Service::createQuery($daoFilter)->count();
        $this->_displayIfVerbose("[$operationType][$inputStatus]: $startCount records ... status will set to $newStatus");
        $numDocs = (int) $this->numDocs();
        
        $nRows = 0;
        do{
            $items = Rhema_Model_Service::createQuery($daoFilter)->execute();
            $count = $items ? count($items) : 0;
            $arr [$operationType] = array();
            if($count){
                $this->_displayIfVerbose(" Processing " . $count . " records...", "");
                foreach($items as $row){
                    if(self::OPERATION_DELETE == $operationType){
                        if($numDocs){ //avoid deleting when the index is empty the 1st time
                            $this->_deleteDocumentFromIndex($row ['id']);
                        }
                    }else if(self::OPERATION_ADD_TO_INDEX == $operationType){
                        $this->_addRowToIndex($row);
                    }
                    $arr [$operationType] [] = $row ['id'];
                    $nRows ++;
                }
                
                $done += Admin_Model_AffiliateProduct::updateIndexStatus($arr [$operationType], $newStatus);
                $this->_displayIfVerbose(sprintf("  done [%s]", round($nRows / $count * 100, 2) . " %"));
            }
        }while($count > 0);
        
        $this->_displayIfVerbose(' [end!]');
        
        return array('to process' => $startCount, 'done' => $nRows);
    }
    
    /**
     * Delete from index, if it exists
     *
     */
    private function _deleteDocumentFromIndex($value){
        $field = self::$indexKey;
        $query = new Zend_Search_Lucene_Search_Query_Term(new Zend_Search_Lucene_Index_Term($value, $field));
        
        $docs = $this->getIndex()->find($query);
        foreach($docs as $hit){
            if($hit->getDocument()->getField($field) == $value){ 
                return $this->getIndex()->delete($hit->id);
            }
        }
        return false;
    }
 
    
    private static function rowEncode($row){ 
        return serialize($row);
    }
    
    public static function rowDecode($row){
        return unserialize($row);
    }
    
    /**
     * Convert code row array to \Zend_Search_Lucene_Document and Add to index
     *
     * @param array $row
     * @param int $recordType self::TYPE_STORE | self::TYPE_CODE
     * @return \Zend_Search_Lucene_Document
     */
    private function _addRowToIndex($row){
         
        $doc = new Zend_Search_Lucene_Document();
        $doc->addField(Zend_Search_Lucene_Field::unIndexed('fieldType', self::$indexKey));       
        $doc->addField(Zend_Search_Lucene_Field::Text('title', $row ['title']));
        $doc->addField(Zend_Search_Lucene_Field::Text('description',$row ['description'])); 
        $doc->addField(Zend_Search_Lucene_Field::Binary('row', self::rowEncode($row)));        
        $this->getIndex()->addDocument($doc);
 
        return $doc;
    }
    
    /**
     * Call find of zend search
     * @param unknown_type $query
     */
    public function find($query){
        return $this->getIndex()->find($query);
    }
    
    /**
     * Optimize index
     */
    public function optimizeIndex(){
        return $this->getIndex(false)->optimize();
    }
    
    /**
     * Get number of documents (deleted not included, all segments are asked)
     */
    public function numDocs(){
        return $this->getIndex()->numDocs();
    }
    
    /**
     * Drop the whole index !! be careful
     */
    public function deleteIndex(){
        
        $this->getIndex(); //to check the existance
        echo "deleting index at " . $this->indexesDir . " ...";
        $deletedFiles = 0;
        foreach(new DirectoryIterator($this->indexesDir) as $fileInfo){
            if(! $fileInfo->isDir()){
                $fname = $fileInfo->getPathname();
                if(! in_array(substr($fname, - 4), array('.php', 'html', 'htm', '.txt'))){
                    if(unlink($fname)){
                        $deletedFiles ++;
                    }
                }
                echo "deleted $fname\n";
            }
        }
        if($deletedFiles){
            $done = Admin_Model_AffiliateProduct::resetIndexStatus(); 
            echo "deleted $deletedFiles files. All product index_status set to to_index\n";
        }
        return $deletedFiles;
    }
    
    /**
     * Return the total size of the index and the number of files
     * @return array array(#files, #size in bytes, readable format)
     */
    public function getIndexSize(){
        $this->getIndex(); //to check the existance
        $size = $nFiles = 0;
        foreach(new DirectoryIterator($this->indexesDir) as $fileName => $fileInfo){
            if(! $fileInfo->isDir()){
                $fname = $fileInfo->getPathname(); 
                $size += @filesize($fname);
                $nFiles ++;
            }
        }
        return array($nFiles, $size, sprintf('%s Mb in %d files', round($size / 1048576, 2), $nFiles));
    }
    
    /**
     * return array of settings under sites.ini->search
     * @return array
     */
    public function getSettings(){
        return Rhema_SiteConfig::getConfig('search');    
    }
    
    /**
     * Setter for verbose mode
     * @param boolean $mode
     */
    public function setVerboseMode($mode){
        $this->verboseMode = $mode;
    }
    
    /**
     * Display text on the console if verbose mode is On
     * @param string $msg
     */
    private function _displayIfVerbose($msg, $newLine = PHP_EOL){
        if($this->verboseMode){
            echo $msg . $newLine;
        }
    }
    
    /**
     * Set result limit, static call
     * @param int $limit
     */
    public static function setLimit($limit){
        Zend_Search_Lucene::setResultSetLimit($limit);
    }
    
    /**
     *
     */
    protected function _executeCommand($cmd){
        echo "executing [$cmd]\n";
        exec($cmd, $output);
    }
     
    public function syncIndexToLoadBalancerServers($verbose){
        // get paths and add final slash if not added
        $shmPath       = rtrim($this->options ['index_ready_dir']['path'], DIRECTORY_SEPARATOR) . DIRECTORY_SEPARATOR;
        $readyFileFlag = $shmPath . $this->options ['index_ready_dir'] ['file'];
        $diskIndexPath = rtrim($this->options ['indexes_dir'], DIRECTORY_SEPARATOR) . DIRECTORY_SEPARATOR; 

        $this->_executeCommand("/usr/bin/rsync -a --delete $diskIndexPath $diskIndexPath");
        
        //remove lock index on shmPath from all servers (localhost included)
        $rmFlagFileCommand = "rm -f $readyFileFlag";
        $this->_executeCommand($rmFlagFileCommand); 
        
        echo "waiting for shm searches finishing on live site...\n";
        sleep(10);
        
        // for each server, reset shm, and copy disk->shm
        $commands = array("/bin/rm -rf $shmPath",               //remove internal files
					      "/bin/mkdir -p $shmPath",             //in case server is restarted or 1st time
						  "chown -R apache.apache $shmPath",    //in case server is restarted or 1st time
						  "chmod -R 775 $shmPath",              //in case server is restarted or 1st time
						  "/bin/cp -rpf {$diskIndexPath}* {$shmPath}", 
                   ); 
                   
        foreach($commands as $command){
            $this->_executeCommand($command);
        }
                 
        // restore the readyFileFlag
        $touchReadyFileCmd = "touch $readyFileFlag";
        $this->_executeCommand($touchReadyFileCmd);
 
    }

}
