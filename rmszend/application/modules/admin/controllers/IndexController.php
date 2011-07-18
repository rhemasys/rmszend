<?php
class Admin_IndexController extends Rhema_Controller_Abstract{
	
	/**
	 * Authetication service
	 *
	 * @var unknown_type
	 */
	protected $_authService;
	protected $_utility;
	
	public function init(){
		/* Initialize action controller here */
		parent::init();
	}
	
	public function indexAction(){
		$this->view->moduleData = $this->getModuleData();
	}
	
	public function pageAction(){
		$this->_table = MODEL_PREFIX . 'Template';
		$urlParms = $this->_urlParams;
		$urlParms['action'] = 'save';
		$urlParms['table'] = $this->_table;
		$this->_gridParam['editurl'] = $this->router->assemble($urlParms, ADMIN_ROUTE); // baseUrl . '/admin/grid/save/table/' . $this->_table;
		

		$this->displayGrid();
	}
	
	public function adminaccessAction(){  
		$table      = 'admin_menu';		 
		if('updateAcl' == $this->_getParam('task')){
			$this->_helper->accessControl->updateAcl($table); 
		}
		$this->_helper->accessControl->showTabs($table);
	}
		
	public function registryAction(){
		$this->_table = ADMIN_PREFIX . 'AdminModule';
		$this->displayGrid();
	}
	
	public function settingAction(){
		$this->_table = ADMIN_PREFIX . 'AdminSetting';
		$this->displayGrid();
	}
	
	public function menuAction(){
		    
    //  $bootstrap = $this->getInvokeArg('bootstrap');  
   //   $userAgent = $bootstrap->getResource('useragent');
    // pd($userAgent->getDevice()); 
		$table = 'admin_menu';
		$this->_helper->setupMenuTab($table);
	}

	
	public function formAction(){
		$this->_table = MODEL_PREFIX . 'WebForm';
		$this->displayGrid();
	}
	
	public function sysInfoAction(){ 
		$info = array(
				'RhemaSys Version' => 'test', 
				'Home Directory' => SITE_DIR, 
				'Application Env' => APPLICATION_ENV, 
				'Application Path' => APPLICATION_PATH, 
				'ServerName' => $this->_request->getServer('SERVER_NAME'), 
				'Zend_Version::VERSION' => Zend_Version::VERSION, 
				'jQuery Version' => ZendX_jQuery::DEFAULT_JQUERY_VERSION, 
				'jQuery UI Version' => ZendX_jQuery::DEFAULT_UI_VERSION, 
				'BvbGrid Version' => Bvb_Grid::VERSION);
	 
		$this->view->configs    = Zend_Registry::get('config');
		$this->view->serverInfo = $info;
	}
	
	public function phpinfoAction(){
		
	}
 
}