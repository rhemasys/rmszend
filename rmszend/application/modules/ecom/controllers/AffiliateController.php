<?php

class Ecom_AffiliateController extends Rhema_Controller_Abstract {
	
	const PREVIEW_LIMIT = 2;
	
	
	public function indexAction(){
		
	}
	
	public function setupAction(){
    	$this->_table 				= 'affiliate_feed';
    	$options['preGenerateHooks'] = array(
    		'addFeedColumns' => array()
    	);
    	$this->displayGrid($options); 			
	}
	
	public function dataImportAction(){
    	$this->_table 				= 'affiliate_product';
    	$this->displayGrid(); 			
	}
	
	public function previewMappingAction(){
		$feedId 		= $this->_request->getParam('feedId');
		$feedModel      = MODEL_PREFIX . 'AffiliateFeed';		
		$prodModel      = MODEL_PREFIX . 'AffiliateProduct';
		$prodTable      = Doctrine_Core::getTable($feedModel);
		$feedData  	    = $prodTable->find($feedId);				
		$cacheFile      = Rhema_Util::getFeedCacheFilename($feedData['feed_url']);	
		$return['error'] = 0;
		
		$task           = $this->_request->getParam('task');
		       	
		if(file_exists($cacheFile) and ($handle= fopen($cacheFile,'r')) !== false){  	 
			$feedCols = fgetcsv($handle);	
			$count    = 0;		
			$mapped   = array();
	        $values   = array();
				        
	        $mapping = Zend_Json::decode($feedData->field_mapping, true);
	        $dbCols  = Doctrine_Core::getTable($prodModel)->getColumnNames();
	        
	        foreach($dbCols as $col){
	        	if(isset($mapping[$col]['columns']) and $mapping[$col]['columns']){
	        		$mapped[$col] = $mapping[$col]['columns'];
	        	}
	        }	 
	                
	        if($task == 'preview'){
		        while (($data = fgetcsv($handle)) !== false and $count < self::PREVIEW_LIMIT) {
		            $values[] = array_combine($feedCols, $data); 
		            $count++; 
		        }
		        
		        fclose($handle);  
		
		        $this->view->notMapped   = $this->_getNotMappedFields($feedCols, $mapped);
		        $this->view->feedColumns = $feedCols;
		        $this->view->feedValues  = $values;
		        $this->view->mappedCols  = $mapped ; 
						
		        $data   		  = $this->view->render('affiliate/preview-mapping.phtml'); 		
		        $return['data']   = Rhema_Util_String::stripWhiteSpaces($data )	;
		        $this->_helper->json->sendJson($return); 
		         
	        }else{	  
	        	list($message, $msgType)     = $this->_helper->feedImport($cacheFile, $feedId); 
	        	$this->_sendAjaxMessage($message, __FUNCTION__, $msgType);
	        }
        }
        
        return $message;         	
	}
	
	protected function _getNotMappedFields($feedCols, $mapped){
		$mapped    = array_unique(array_values($mapped));
		$feedCols  = array_values($feedCols);
		$notMapped = array_diff($feedCols, $mapped);
		
		return $notMapped;
	}
	
	public function mapFieldAction(){
		$feedModel       = MODEL_PREFIX . 'AffiliateFeed';
		$prodModel       = MODEL_PREFIX . 'AffiliateProduct'; 		
 
		$feedId          = $this->_request->getParam('feedId', $this->_request->getQuery('feedId'));		
		$feedData        = Doctrine_Core::getTable($feedModel)->find($feedId);
			      
        $return['error'] = 0;
        $feedColumns     = array();
		$tryDownload     = false;
		
        if($this->_request->isPost()){
        	$task = $this->_request->getPost('task');
        	
        	switch($task){
        		case 'savemap':
        		default: {
        				$str = $this->_request->getParam('str');
        				parse_str($str, $mapData);  
        				$toSave  = Zend_Json::encode($mapData);
        				$feedData->field_mapping = $toSave;
        				
        				try{
        					$feedData->save();
        					$message = 'Feed mapping saved successfully';
        					$type    = Rhema_Dto_UserMessageDto::TYPE_SUCCESS;
        					$return['error'] = 0;
        				}catch(Exception $e){
							$message = $e->getMessage();
							$type    = Rhema_Dto_UserMessageDto::TYPE_ERROR;
							$return['error'] = 1;
        				}
        				$userMessage     = new Rhema_Dto_UserMessageDto($message, 'Feed Mapping', $type);		 
						$return['data']  = $this->view->printUserMessage($userMessage);
						
					
        			break;
        		}
        	}
        }else{
 
			if($feedData['feed_url']){ 
				$cacheFile    = Rhema_Util::getFeedCacheFilename($feedData['feed_url']);		
				if(false and !file_exists($cacheFile)){ 
					set_time_limit(0);
					$tryDownload = true;
					$url  = $feedData['feed_url'];
					$b    = PHP_OS;
					$path = (PHP_OS == 'WINNT') ? 'C:\cygwin\bin\\' : '/usr/local/bin/';
					$cmd  = $path . 'wget -q -O ' . escapeshellarg($cacheFile) . ' ' . escapeshellarg($url); 
					exec($cmd, $output); // download the feed					
				}
				
				if(!file_exists($cacheFile)){					
 
					$message[]       = 'Feed not available, please download feed from affilliate network';
					$message[]       = 'Feed Url : ' . $feedData['feed_url'];
					$message[]       = 'Save as filename : ' . $cacheFile;	 
					
					$userMessage     = new Rhema_Dto_UserMessageDto($message, 'Feed Download', Rhema_Dto_UserMessageDto::TYPE_WARNING, false);		 
					$return['data']  = $this->view->printUserMessage($userMessage);
					$return['error'] = 1;
					
					$this->_helper->json->sendJson($return);				 
				}else{
					if($tryDownload){
						$feedData->downloaded_at = new Doctrine_Expression('NOW()');
						$feedData->save();
					}
					if(($fp = fopen($cacheFile,'r')) !== false){
						$feedColumns = fgetcsv($fp); // get first line from the feed
						fclose($fp);
					}
					//$feedColumns = explode(',', $headerLine);  
				};
			}
			asort($feedColumns); 
			$selOptions     = array_combine($feedColumns, $feedColumns); 
			$mapped         =  Zend_Json::decode($feedData->field_mapping, true);
			$this->view->feedColumns = $selOptions;
			$this->view->feedFilters = array();
			$this->view->affData     = $feedData 	;
			$this->view->feedId      = $feedId;
			$this->view->mapped      = $mapped;
			$this->view->cacheFile   = $cacheFile ;
			$this->view->columns     = Doctrine_Core::getTable($prodModel)->getColumnNames();
			$this->view->ignoreList  = array_merge(Rhema_Grid_Adapter_DoctrineModel::$ignoreFields, Rhema_Grid_Adapter_DoctrineModel::getBannedList());
	
			$data            = $this->view->render('affiliate/map-field.phtml');  
			$return['data']  = Rhema_Util_String::stripWhiteSpaces($data);		
        }
        
        $this->_helper->json->sendJson($return); 
	}
}