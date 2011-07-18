<?php

class IndexController extends Rhema_Controller_Abstract
{

    public function init(){
    	/* Initialize action controller here */
		parent::init();
		
    }

     

    public function indexAction(){
        $request     = $this->getRequest();
     	$action      = $request->getActionName(); 
 		$actCode     = $this->_getParam('action',$action);
 		//Zend_Registry::set('page-params',$request->getParams());
 		//$r = $this->_utility->getCached()->getFeaturedItems();
    	$this->buildPage($actCode);
    
    }
    
    public function searchAction(){
    	Zend_Registry::set('page-params',$this->getRequest()->getParams());
    	$this->_helper->viewRenderer->setScriptAction('index');
    	
    	$this->buildPage('search');
    }
    
    public function buildPage($actCode = 'index'){
    	$request     = $this->getRequest();
    	$pageModel   = MODEL_PREFIX . 'Page';
    	$menuModel   = MODEL_PREFIX . 'Menu';
    	
    	//================ display div/section tabs in edit mode ===================
    	$editMode       = $request->getParam('mode', Rhema_Util::getSessData('edit_mode')); 
    	$admin          = $request->getParam('admin', 1);
    	//============================================================================
    	Rhema_Util::setSessData('edit_mode', $editMode);
    	$this->_utility->setSessData('admin', $admin) ;	
 
    	$pageData    = $this->_utility->getSessData('page-data', $admin);
    	if(!$editMode and !NO_CACHE and isset($pageData['actcode'][$actCode])  and count($pageData['actcode'][$actCode])){
    		 $result = $pageData['actcode'][$actCode];
    	}else{
    		$result  						= Admin_Model_AdminMenu::getPageDefinition($menuModel,$actCode);  
    		$pageData['actcode'][$actCode] 	= $result;
    	}
    	
    	$page               = count($result) ? $result[0] : array(); 
    	if($page){     		
    		if($editMode ){
    			$headFoot		  = $this->getHeaderFooter($page);
    		}else{
    			$headFoot		  = $this->getCached($this->headerTags)->getHeaderFooter($page, $actCode);   
    		} 		
    		  
    		$pageId				  = $page['Page']['id'];
    		$template_id          = $page['Page']['template_id'];	
    		
    		
    		if(isset($pageData['layout'][$pageId][$template_id]) and APPLICATION_ENV != 'development'){
    			$pageLayout  = $pageData['layout'][$pageId][$template_id];
    		}else{
    			$pageLayout  = Admin_Model_PageLayout::getPageLayout($pageId, $template_id, 'Page');
    			if(count($pageLayout)){
    				$pageData['layout'][$pageId][$template_id] = $pageLayout;
    			}
    		}
    		
    		$this->view->layout   		= $pageLayout;
    		$this->view->sections 		= $this->getCached('admin_section_id')->getSections($template_id);        
    		$this->view->header      	= $headFoot['PageHeader'];   		
    		$this->view->footer      	= $headFoot['PageFooter'];
    		 
    		$this->view->template_id    = $template_id;
    		$this->view->page_id 		= $pageId ;
    		$this->view->pageData       = $page['Page'];      		
  			$this->_utility->setSessData('page-data', $pageData); 
  			
    	}else{    		 
    		$request->setParam('action','page-not-found');
    		call_user_func_array(array($this, 'indexAction'), array());
    	}
    	
    	
    }
   
     
    public function __call($method, $arg){
    	if('Action' == substr($method, -6)){ 
    		$this->_helper->viewRenderer->setScriptAction('index');
    		call_user_func_array(array($this, 'indexAction'), $arg);    		
    	}
    	
    	throw new Exception('Invalid method');
    }
  
	
	public function logoutAction(){
		$this->getAuthService()->clear();
		$namespace = new Zend_Session_Namespace(SESS_NAMESPACE);
		$namespace->unsetAll();
 
		$this->removeCacheFiles(); 
		$this->_helper->redirector->gotoRoute(array('action'		=>'index'
													,'controller'	=>'index'
													,'module'		=> DEFAULT_MODULE),
													FRONT_MENU_ROUTE
											);
	}

	
	
	public function pdfAction(){		 
		$filename = '';
		$options  = '';
		$html     = '';		
		$svc = new Admin_Service_Pdf(); $svc->toPdf($filename, $html);
	}

}