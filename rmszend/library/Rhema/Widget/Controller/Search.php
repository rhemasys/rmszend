<?php
	class Rhema_Widget_Controller_Search extends Rhema_Widget_Abstract{


	    public function indexMethod(){
	    	$search		= $this->_request->getParam('searchType');
	    	$return     = array();

	    	if($search){
	    		$search = strtolower($search);
	    		$name   = $search . 'Method';
	    		//$this->_helper->viewRenderer->setScriptAction($search);
	    		$return = $this->$name();
	    	}

	    	return $return;
	    }

	    public function standardMethod(){
	    	$form   = new Rhema_Form_Search_Simple();
	    	$post = $this->_request->getPost();
	     
	    	if($form->isRhemaButtonSubmitted()){
	    			    		
	    		if(!$form->isValid($post)){ 
					$msg = new Rhema_Dto_UserMessageDto($form->getMessages(), 'Search', Rhema_Dto_UserMessageDto::TYPE_ERROR);
					$flash = Zend_Controller_Action_HelperBroker::getStaticHelper('flashMessenger');
					$flash->addMessage($msg);	
					$gotoUrl = $this->_request->getServer('HTTP_REFERER');    			
	    		}else{	    		
	 		    	$gotoUrl = $this->_view->url(array('category' => 'search', 
			    											'page'      => $this->_request->getParam('page'),
			    											'keyword'   => $form->getValue('keyword'))
			    					, 'portfolio-search');
	    		}		
	    				 			
	    		$red = Zend_Controller_Action_HelperBroker::getStaticHelper('redirector');  
		 		$red->gotoUrlAndExit($gotoUrl );	
	 						
	    	}else{
	    		
		    	$action	= $this->_view->url(array('slug' => 'search'), 'site-default-route');		    	
		    	$form->getElement(get_class($form))	    		 
		    		 ->setLabel('');
		    	$form->setAction($action);
		    	
	    	}
	    	
	    	$form->getElement('keyword')
	    		 ->setValue($this->_request->getParam('keyword'), '');
	    			    	
	    	$return['searchForm'] = $form;
		    return $return;		    	
	    }
	    
	    public function categoryMethod(){
	    	$slug 	 			= $this->_request->getParam(CATEGORY_MAP);
	    	$page    			= $this->_request->getParam('page', 1);
	    	$limit   			= $this->_utility->getSetting(1);
	    	//$search				= $this->_request->getParam('searchType');

	    	//$url				= $this->_utility->assemble(array(CATEGORY_MAP => $slug, 'page'=> $page), CATEGORY_ROUTE);
	    	$url				= '/category/' . $slug;

	    	$display_type       = $this->_request->getParam('display_type', 3);
	    	$templateId		    = $this->_utility->getSessData('display_template_id_' . $display_type);
	    	$displayTemplate    = $this->getCached('displaytemplate')->getDisplayTemplate($templateId, $display_type);

	    	$pageLayout   		= Ecom_Model_EcomProductCategory::getSearchLayout($slug, CATEGORY_MAP, $limit, $page, $url);

	    	$pager			 				= $pageLayout->getPager();
	    	$return['displayTemplate']    	= $displayTemplate;
	    	$return['products']				= $pager->execute();
	    	$return['nav'] 					= $pageLayout;

	    	return $return;

	    }

	    public function branchMethod(){
	    	$slug 					= $this->_request->getParam(CATEGORY_MAP);
	    	$page    				= $this->_request->getParam('page', 1);
	    	$display_type 			= 2;
	    	$children				= array();
	    	$url					= '/branch/' . $slug;

	    	$templateId		    	= $this->_utility->getSessData('display_template_id_' . $display_type);
	    	$displayTemplate    	= $this->getCached('displaytemplate')->getDisplayTemplate($templateId, $display_type);
    	    $pageLayout 	    	= Ecom_Model_EcomNavigationMenu::getSubCategoryLayout($slug, $page, $url);

	    	$pager			 		= $pageLayout->getPager();
	    	$res					= $pager->execute();
	    	$category 				= $res[0];

			if($category){
				$node     			= $category->getNode();
				$children 			= $node->getChildren();
			}

	    	$return['category']				= $children;
	    	$return['nav'] 					= $pageLayout;
	    	$return['displayTemplate']    	= $displayTemplate;

	    	return $return;
	    }

	    public function getDisplayTemplate($templateId, $displayType){
	    	//return Ecom_Model_EcomAttribute::getAttributeTemplates($templateId, $displayType);
	    	return Ecom_Model_EcomTemplateAttribute::getAttributes($templateId, $displayType);
	    }

	    public function productMethod(){
	    	$productId				= $this->_request->getParam('product_id');
	    	$model					= ECOM_PREFIX . 'EcomProduct';

	    	$display_type 			= 1;
	    	$templateId		    	= $this->_utility->getSessData('display_template_id_' . $display_type);
	    	$displayTemplate    	= $this->getCached('displaytemplate')->getDisplayTemplate($templateId, $display_type);

	    	$this->_utility->setHeaderFiles(array('/featuredimagezoomer.js'));

	    	$return['displayTemplate']    = $displayTemplate;
	    	$return['product'] 			  = Doctrine_Core::getTable($model)->find($productId);

			return $return;
	    }

	    /**
	     * Perform site search using google' search api
	     */

	    public function siteresultMethod(){
	    	$return            = array();
	    	$search            = $this->_request->getParam('search', null);

	    	if($search !== null){
		    	$siteParam		   = null ;
		    	$keyword           = $this->_request->getParam('keyword', null);
		    	$keyword           = strip_tags(html_entity_decode(urldecode($keyword)));
	    	}

	    	return $return ;
	    }

	    public function googleSearchMethod(){
	    	$return            = array();
	    	$search            = $this->_request->getParam('search', null);

	    	if($search !== null){
		    	$siteParam		   = null ;
		    	$keyword           = $this->_request->getParam('keyword', null);
		    	$keyword           = strip_tags(html_entity_decode(urldecode($keyword)));

		    	if($keyword){
		    		$url 			   = 'http://ajax.googleapis.com/ajax/services/search/local';
			    	$vars 			   = array('v' 	=> '1.0',
			    							'q'		    => $keyword ,
			    							'key'	    => $this->_apikey ,
			    							'userip'	=> $this->_utility->getClientIp()
				    				) ;
				    $url  			  .= '?' . http_build_query($vars);

		      		$config = array(
		          				'adapter'     => 'Zend_Http_Client_Adapter_Curl',
		          				'curloptions' => array(
		      											CURLOPT_RETURNTRANSFER  => 1,
		      											CURLOPT_REFERER			=> $this->_request->getServer('REQUEST_URI')
		      										)
		      				);

		      		$client = new Zend_Http_Client($url, $config);
		      		$resp	= $client->request('GET');
		      		$body   = $resp->getBody();
		      		$return = Zend_Json::decode($body, true);
		    	}
	    	}
			return $return;

	    }
 
	}