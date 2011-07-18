<?php 
class Rhema_Controller_Action_Helper_FeedImport extends Rhema_Controller_Action_Helper_Abstract{
	const WRITE_BUFFER    = 10000;
	public $_catList      = array();
	public $_retailerList = array();
	public $tempFiles     ;
	public $fileSaved     = array();
	private $_con         = null;
	private $_lockFile    = 'code-imported-lock.txt';
	
	public function direct($csv, $feedId){ 		
		set_time_limit(0); 
		$startTime      = microtime(true);
		$feedModel      = MODEL_PREFIX . 'AffiliateFeed';		
		$prodModel      = MODEL_PREFIX . 'AffiliateProduct';
		$prodTable      = Doctrine_Core::getTable($feedModel);
		$feedData  	    = $prodTable->find($feedId);
		$sqlDir         = Rhema_Util::getFeedSqlDirectory($feedData['title']) ;
		$msgType        = Rhema_Dto_UserMessageDto::TYPE_SUCCESS ;
		$return              = Rhema_Util::createSiteDirectory($sqlDir);
		$this->tempFiles     = current($return) . '/'; 
		
		foreach(new DirectoryIterator($this->tempFiles) as $f){
			if($f->isDot()){
				continue;
			}
			$this->fileSaved[] = $f->getPathname();
		}
		
		$fileCount = count($this->fileSaved);
		if($fileCount){
			if($fileCount > 1){
				$message = $this->executeSql($this->fileSaved);	
			}else{
				$message  = $feedData['title'] . ': Feed already imported';
				$msgType  = Rhema_Dto_UserMessageDto::TYPE_WARNING;
			}
		}else{			
			$foreignKeys    = array(
				'affiliate_network_id', 
				'affiliate_retailer_id',
				'affiliate_product_category_id',
				'unique_hash'
			);
	 
			if(file_exists($csv) and ($handle= fopen($csv,'r')) !== false){ 	
				$feedCols            = fgetcsv($handle);		 
				$this->_catList      = $this->_listCategory();
				$this->_retailerList = $this->_listRetailers();
						            
				$count    = 0;		
				$mapped   = array();
		        $values   = array();
					        
		        $mapping = Zend_Json::decode($feedData->field_mapping, true);
		        $dbCols  = Doctrine_Core::getTable($prodModel)->getColumnNames();
	 
	        	$count        = 0;
	        	$done         = 0;	
	        	$colSql       = $message = '';	
	        	$categoryList =  $valid = $collate = $query = array();
	 
	        	$collection   = new Doctrine_Collection($prodModel);         	
	        	$user         = Zend_Auth::getInstance()->getIdentity();
	        	$now          = date(DB_DATE_FORMAT);
	        	
	        	$defaultValues = array(
	        		'admin_subsite_id'     => Zend_Registry::get('namespace')->subsiteId,
			        'created_by'           => $user['id'],
			        'updated_by'           => $user['id'],
			        'created_at'           => $now ,
	        	    'updated_at'           => $now ,
	        	    'affiliate_network_id' => $feedData['affiliate_network_id']
	        	);
	 
				try{
		        	while (($data = fgetcsv($handle)) !== false) { 	        		
		        		$values  = $defaultValues;
		        		$valid   = array_combine($feedCols, $data); 
		        		 
		        		$valid['affiliate_network_id'] = $feedData['affiliate_network_id'];        		  
		        		      		         
		        		foreach($dbCols as $col){
				        	if(isset($mapping[$col]['columns']) and $mapping[$col]['columns']){
				        		$m             = $mapping[$col]['columns'];
				        		$values[$col]  = isset($valid[$m]) ? $valid[$m] : '';
				        		$values[$col]  = mysql_escape_string($values[$col]);
				        	}
				        }	        	           
				                    		            
			            $values['affiliate_product_category_id'] = $this->_getCategory($valid);
			            $values['affiliate_retailer_id']         = $this->_getRetailer($valid);
			            $values['unique_hash'] = md5($values['productid'] 
			                                       . $values['product_name']
			            						   . $values['affiliate_network_id']
			            						   . $values['affiliate_retailer_id']);
			            						   
			            $valueSql[] = "('" . implode("', '", array_values($values)) . "')";  					   
			            						   
	 
			            $count++;
			            
			            if($count%self::WRITE_BUFFER == 0){
			            	$this->_saveInsertQuery(affiliate_product, $values, $valueSql, $colSql);
			            	$valueSql = array();		            	 
			            }	     					        
		        	}
			        
	 				if(count($valueSql)){
	 		            $this->_saveInsertQuery(affiliate_product, $values, $valueSql, $colSql);  
	 				}

	 				file_put_contents($this->tempFiles . '/'. $this->_lockFile, 1);
	 				$message = count($this->fileSaved) . ' SQL import files created successfully';
	 					       			        
				}catch(Exception $e){
					$message  =  $e->getMessage();
					$msgType  = Rhema_Dto_UserMessageDto::TYPE_ERROR;
				}				
			}
			fclose($handle); 
		}			
	    return array($message, $msgType);        		        
	}		
	 
	
	public function executeSql($files = array()){
		$done         = 0;
		$startTime    = microtime(true);
		$doctrine     = Doctrine_Manager::getInstance()->getCurrentConnection()->getDbh(); 
		asort($this->fileSaved);
		foreach($this->fileSaved as $file){
			if(basename($file) != $this->_lockFile){
	 			$query    = file_get_contents($file);
			    $done    += $doctrine->query($query);  
				unlink($file);
			}
		}
		
		//$doctrine->query("OPTIMIZE TABLE affiliate_product`"); 
		
		$duration = microtime(true) - $startTime;
        $secs     = round($duration, 2);
        $message  = $done . ' files executed in ' . $secs . ' seconds. '; 
		return	$message;
	}
	
	protected function _saveInsertQuery($table, $cols, $values, &$colSql = ''){
		 $pre     = "SET autocommit=0;  SET foreign_key_checks=0; ";
		 $post    = " COMMIT; SET foreign_key_checks=1; ";
         $colSql  = $colSql ? $colSql : "INSERT LOW_PRIORITY IGNORE INTO $table (`" . implode("`, `", array_keys($cols)) . "`) VALUES";
         $query   = $pre . $colSql . implode(', ', $values) . ' ON DUPLICATE KEY UPDATE updated_at= \'' 
            			     . date(DB_DATE_FORMAT) ."';" . $post;	
         		            	
         $filename   = $this->tempFiles . time() . '.sql';		            	
         if(file_put_contents($filename, $query)) {
            $this->fileSaved[] = $filename; 
            return true;
         } 	
         return false;		
	}
	
	
	protected function _getCategory($catData){
		$catName    = isset($catData['category_name']) ? $catData['category_name'] : null;	
			
		if($catName and !isset($this->_catList[$catName])){					 
			$category = new Admin_Model_AffiliateProductCategory();
			$category->fromArray($catData); 
			$category->categoryid  = $catData['category_id']; 
			$category->title       = $catData['category_name'];
			$category->save();			 
			
			$this->_catList[$catName]['id'] = $category['id'];
		}
		
		return (int) $this->_catList[$catName]['id'];		
	}
	
	protected function _getRetailer($data){
		$key       = isset($data['program_name']) ? 'program' : 'merchant';
		$name      = $data[$key .'_name'];	
			
		if($name and !isset($this->_retailerList[$name])){		
			 
			$retailer = new Admin_Model_AffiliateRetailer();
			$retailer->fromArray($data); 
			$retailer->programid = $data[$key . '_id'];
			$retailer->title     = $data[$key .'_name'];
			$retailer->save();			 
			
			$this->_retailerList[$name]['id'] = $retailer['id'];
		}
		return (int) $this->_retailerList[$name]['id'];		
	}
	
	protected function _listRetailers(){
		$daoFilter = new Rhema_Dao_Filter();
		$daoFilter->setModel(MODEL_PREFIX . 'AffiliateRetailer')
				  ->setIndexBy('title')
				  ->setFields(array('id', 'title'));
		$list = Rhema_Model_Abstract::findAll($daoFilter);
		return $list;
	}
	
	protected function _listCategory(){
		$daoFilter = new Rhema_Dao_Filter();
		$daoFilter->setModel(MODEL_PREFIX . 'AffiliateProductCategory')
				  ->setIndexBy('title')
				  ->setFields(array('id', 'title'));
		$list = Rhema_Model_Abstract::findAll($daoFilter);
		return $list;
	}
	
	protected function _doOperation($sql){	
		if(!$this->_con){
			$config = Rhema_SiteConfig::getConfig('settings.db.local');		
			mysql_pconnect($config['host'],$config['username'],$config['password']) or die('error connection');
			mysql_select_db($config['dbname']) or die('error database selection');
			$this->_con = true;
		}
		return mysql_query($sql);  	
	}
}
	