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

 		$address = '12 manley road,hulme manchester';
 		//Rhema_Model_Abstract::reLoadAdminTables();
 		//$out     = $this->_helper->geocoder($address);
    }


    public function searchAction(){
    	Zend_Registry::set('page-params',$this->getRequest()->getParams());
    	$this->_helper->viewRenderer->setScriptAction('index');
    }


    public function __call($method, $arg){
    	if('Action' == substr($method, -6)){
    		$this->_helper->viewRenderer->setScriptAction('index');
    		call_user_func_array(array($this, 'indexAction'), $arg);
    	}
    }


    public function feedAction(){
 		$this->_helper->layout()->disableLayout();
		$this->_helper->viewRenderer->setNoRender();
		$posts = Rhema_Model_Service::factory('blog_post')->getBlogPosts(100, null);
		$config = Rhema_Util::getSessData(Rhema_Constant::SITE_CONFIG_KEY);
		$siteData = $config['subsite'];
		$siteLink = 'http://' . $this->_request->getHttpHost();

		$dto = new Rhema_Dto_FeedDto();
		$feedTitle = $siteData['title'] . ' - Blog Feed';
		$dto->setItems($posts)
			->setTitle($feedTitle)
			->setDescription($siteData['description'])
			->setKeywords($siteData['keyword'])
			->setLink($siteLink);

		$feed = $this->_helper->getHelper('generateFeed')->rss($dto);
		$this->_response
				->setHeader('Content-Type', 'text/xml; charset=utf-8')
				->setHeader('Pragma', 'public')
				->setHeader('Expires', '-1')
				->setBody($feed)
				->sendResponse();
		exit();
    }

	public function pdfAction(){
		$filename = '';
		$options  = '';
		$html     = '';
		$svc = new Admin_Service_Pdf(); $svc->toPdf($filename, $html);
	}


	public function buyPhotoAction(){

	}

	public function logoutAction(){
		$this->getAuthService()->clear();
		$namespace = new Zend_Session_Namespace(SESS_NAMESPACE);
		$namespace->unsetAll();

		$this->removeCacheFiles();
		$msg = new Rhema_Dto_UserMessageDto('You have logged out successfully', null, Rhema_Dto_UserMessageDto::TYPE_SUCCESS);
		$this->_helper->FlashMessenger($msg);

		$redirectUrl = $this->view->url(array('slug' =>'index' ));
		if($this->_helper->layout->getLayout() != 'admin'){
		    $redirectUrl = $this->_request->getServer('HTTP_REFERER');
		}

		$this->_helper->redirector->gotoUrlAndExit($redirectUrl);
	}


	/**
	 * List all images in the specified image directory for album slideshow
	 * in frontend dialog box when an album thumbnail is clicked
	 */
	public function photobookPreviewAction(){
		$album       = $this->_request->getParam('album');
		$useThumb    = $this->_request->getParam('useThumb', true);
		$list        = array();
		$commentForm = '';
		$albumUrl    = $this->view->url();

		if($album){
			$folio          = Rhema_Model_Service::factory('portfolio');
			$albumDetails   = $folio->getAlbumDetails($album)	;
			$list           = $folio->listAlbumImages($albumDetails, $useThumb);
			$commentForm    = new Rhema_Form_AddComment();
			$commentForm->getElement('id')->setValue($albumDetails['id']);
		}


		$return['list']       = $list ;
		$return['album']      = $albumDetails ;
		$return['imagePath']  = SCRIPT_PATH . '/jquery-raty/img';
		$return['form']       = $commentForm->render();
		$return['albumUrl']   = $albumUrl ;

    	if($this->_request->isXmlHttpRequest()){
    		$this->_helper->json->sendJson($return);
		}else{
		    $this->view->assign($return);
		    $this->view->headTitle($albumDetails['title']);
		}
	}

	public function downloadFileAction(){

	}
}