<?php
class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {
    private $_siteCache;
    protected $_logger;
    protected $_resourceLoader;
    public $frontController;
    public $base;
    public $cpanel;

     protected function _initLog(){
        $this->bootstrap('frontController' );
        
     /*   if(Rhema_Constant::PRD_ENV == APPLICATION_ENV){
            $logDir = Rhema_Util::createSiteDirectory('logs' );
            $logDir = $logDir[0] . DIRECTORY_SEPARATOR . 'syslog.log';
            $writer = new Zend_Log_Writer_Stream($logDir );
        }else{
            $writer = new Zend_Log_Writer_Firebug();
        }
        
        $logger = new Zend_Log($writer );
        Zend_Registry::set('logger', $logger );*/
        
        
        $mem = ini_get('memory_limit' );
        $val = intVal(substr($mem, 0, - 1 ) );
        if($val < 1024){
            ini_set('memory_limit', '1024M' );
        }
        
        
        Zend_Registry::set(Rhema_Constant::PRE_QUERY_KEY, array());

     //   return $logger;
    } 

    protected function _initAutoload(){
        $autoloader = new Zend_Application_Module_Autoloader(array('namespace' => 'Admin', 'basePath' => realpath(APPLICATION_PATH . '/modules/admin' )) );
        $autoloader = new Zend_Application_Module_Autoloader(array('namespace' => 'Ecom', 'basePath' => realpath(APPLICATION_PATH . '/modules/ecom' )) );
        $autoloader = new Zend_Application_Module_Autoloader(array('namespace' => 'Blog', 'basePath' => realpath(APPLICATION_PATH . '/modules/blog' )) );
        $autoloader = new Zend_Application_Module_Autoloader(array('namespace' => 'Help', 'basePath' => realpath(APPLICATION_PATH . '/modules/help' )) );
        $autoloader = new Zend_Application_Module_Autoloader(array('namespace' => 'Storefront', 'basePath' => APPLICATION_PATH . '/modules/storefront') );
        return $autoloader;
    }
    protected function _initCache(){
        $options   = $this->getOptions();
        $cacheDirs = array('cache/functions', 'cache/page');
        $cacheDirs = Rhema_Util::createSiteDirectory($cacheDirs );

        define('NO_CACHE', ! $options['settings']['use_cache'] );
        $cacheManager = $this->getPluginResource('cacheManager' )->getCacheManager();
        $defaultCache = $cacheManager->getCache('default' );
        $defaultCache->getBackend()->setCacheDir($cacheDirs[0] );

        Zend_Registry::set('cache-manager', $cacheManager );
        //$regexps = $options['cachetemplate']['page-file']['regexps'];

        $pageFile = $options['resources']['cachemanager'][Rhema_Cache::CACHE_PAGE_FILE];
        $regexps["^/master/?(.*)$"] = false;
        $regexps["^/ecom/(.*)$"]   = false;
        $regexps["^/(.*)?(rest|force-login|search|login|logout|auth|contact-us|register|master|order-confirmation|shopping-cart)/?[^/]?$"] = false;

        foreach((array) $regexps as $pattern => $val){
            $pageFile['frontend']['options']['regexps'][$pattern]['cache'] = (boolean) $val;
        }
 
        $pageFile['frontend']['options']['cache_id_prefix'] = 'static';
        $pageFile['frontend']['options']['cached_entity']   = $this;
        $pageFile['frontend']['options']['debug_header']    = (strpos($_SERVER['HTTP_USER_AGENT'], 'debug-cache') !== false);

        $cacheManager->setCacheTemplate(Rhema_Cache::CACHE_PAGE_FILE, $pageFile );

        $namespace  = new Zend_Session_Namespace(SESS_NAMESPACE ); 
        $cachePages = ($options['settings']['use_page_cache'] and !Zend_Auth::getInstance()->hasIdentity());
        
        if(!$namespace->admin and $cachePages and APPLICATION_ENV != Rhema_Constant::DEV_ENV){
            $front = Zend_Controller_Front::getInstance();
            $front->setParam('disableOutputBuffering', true );
            $cache = Rhema_Cache::getCacheByTemplate(Rhema_Cache::CACHE_PAGE_FILE );
            $cache->start();
        }
        
        return $defaultCache;
    }
    protected function _initPluginLoaderCache(){
        if('development' != $this->getEnvironment()){
            $path = realpath(APPLICATION_PATH . '/../sites' ) . '/' . SITE_DIR . '/cache/';
            if(! file_exists($path )){
                @mkdir($path, 0777, true );
            }
            $classFileIncCache = $path . 'pluginLoaderCache.php';
            if(file_exists($classFileIncCache )){
                include_once $classFileIncCache;
            }
            Zend_Loader_PluginLoader::setIncludeFileCache($classFileIncCache );
        }
    }
    protected function _initLocale(){
        try{
            //$locale = new Zend_Locale('auto');
            $locale = new Zend_Locale('en_GB' );
        }catch(Zend_Locale_Exception $e){
            $locale = new Zend_Locale('en_GB' );
        }
        $cache = $this->getSiteCache('locale', 'default', '' );
        $locale->setCache($cache );
        Zend_Registry::set('Zend_Locale', $locale );
        return $locale;
    }
    protected function _initTranslate(){
        /*		$tmxDirectory = Rhema_Util::createSiteDirectory('language');

		$translate    = new Zend_Translate (Zend_Translate::AN_TMX,$tmxDirectory);

		$translate->setCache ($this->getResource('cache'));

		Zend_Registry::set('Zend_Translate', $translate);*/
        $translator = new Zend_Translate(array('adapter' => Zend_Translate::AN_ARRAY, 'content' => array('en' => array('Home' => 'Maison')), 'locale' => Zend_Registry::get('Zend_Locale' )) );
        $translator->setCache($this->getResource('cache' ) );
        Zend_Registry::set('Zend_Translate', $translator );
    }
    protected function _initDoctrine(){
        //require_once 'Doctrine.compiled.php';
        require_once 'Doctrine.php';
        $this->bootstrap('session' );
        $namespace = Zend_Registry::get('namespace' );
        $loader = Zend_Loader_Autoloader::getInstance();
        $config = $this->getOptions();
        
        $dbParams = $config['settings']['db'];
        $schemas  = $config['doctrine']['yaml_schema_path'];
        
        $cacheDriver        = null;
        $doctineAttributess = array(Doctrine_Core::ATTR_AUTO_ACCESSOR_OVERRIDE => true, 
						        	Doctrine_Core::ATTR_USE_NATIVE_ENUM => true, 
						        	Doctrine_Core::ATTR_MODEL_LOADING => Doctrine_Core::MODEL_LOADING_PEAR, 
						        	Doctrine_Core::ATTR_AUTOLOAD_TABLE_CLASSES => false, 
						        	Doctrine_Core::ATTR_USE_DQL_CALLBACKS => true
						        );
        $loader->pushAutoloader(array('Doctrine', 'autoload') );
        $manager = Doctrine_Manager::getInstance();
        
        foreach($doctineAttributess as $param => $attr){
            $manager->setAttribute($param, $attr );
        }
        
        $manager->connection($this->_getConnectionString($dbParams['local']), 'admin');
        $manager->connection($this->_getConnectionString($dbParams['remote']), 'remote'); 
        $manager->connection($config['settings']['db']['sqlite'], 'sqlite' );
        
        $manager->setCurrentConnection('admin' );
        //===================== Register Plugins =======================================
        $manager->registerExtension('Blameable' );
        $manager->registerExtension('Subsite', $config['doctrine']['extension_path'] );
        
        if(false){
        //if(extension_loaded('apc')){
            $cacheDriver = new Doctrine_Cache_Apc();
            ini_set('apc.enabled', true );
        }elseif(extension_loaded('pdo_sqlite' ) or extension_loaded('sqlite' )){
            $tableName = SITE_DIR . 'QueryCache';
            $cacheConn = $manager->getConnection('sqlite' );
            $cacheDriver = new Doctrine_Cache_Db(array('connection' => $cacheConn, 'tableName' => $tableName) );
            if(! $namespace->sqliteTable){
                $sql = "SELECT name FROM sqlite_master WHERE name = ?";
                $has = $cacheConn->exec($sql, array($tableName) );
                if($has == 0){
                    try{
                        $cacheDriver->createTable();
                    }catch(Exception $e){
                        //throw new Exception('Unable to create sqlite cache table');
                    }
                    $namespace->sqliteTable = true;
                }
            }
        }else{
            $doctrineCache = Rhema_Util::getDefaultCacheObject(86400 );
            $cacheDriver   = new Rhema_Cache_DoctrineAdapter($doctrineCache, 'doctrine' );
        }
        if($cacheDriver){
            $manager->setAttribute(Doctrine_Core::ATTR_QUERY_CACHE, $cacheDriver );
            $manager->setAttribute(Doctrine_Core::ATTR_RESULT_CACHE, $cacheDriver );
            $manager->setAttribute(Doctrine_Core::ATTR_RESULT_CACHE_LIFESPAN, 3600 );
        }
        
        $doctrineConfig = $config['doctrine'];
        include APPLICATION_PATH . '/../debug/doctrine.php';
        Zend_Registry::set('doctrine', $manager );
        
        return $manager;
    }
    protected function _initSession(){
        Rhema_Util::createSiteDirectory('session/sys_app' );
        $sessionOptions = (array) $this->getOption('session' );
        Zend_Session::setOptions($sessionOptions );
        $defaultNamespace = new Zend_Session_Namespace(SESS_NAMESPACE );
        if(! isset($defaultNamespace->initialized )){
            Zend_Session::regenerateId();
            $defaultNamespace->initialized = true;
        }
        $config = $this->getOptions();
        Zend_Registry::set('config', $config );
        Zend_Registry::Set('namespace', $defaultNamespace );
    }
    protected function _initViewSettings(){
        $this->bootstrap('view' );
        $this->_view = $this->getResource('view' );
    
        $this->_view->headTitle()->setSeparator(' | ' );
        $this->_view->addHelperPath('Rhema/View/Helper', 'Rhema_View_Helper' );
        $this->_view->addScriptPath(realpath(APPLICATION_PATH . '/../library/Rhema/Widget/View' ) );
    
        ZendX_JQuery::enableView($this->_view );
        ZendX_JQuery_View_Helper_JQuery::enableNoConflictMode();
        
        //initialise helpers
        Zend_Controller_Action_HelperBroker::addPrefix('Rhema_Controller_Action_Helper' );
        Zend_Controller_Action_HelperBroker::addPath('ZFDoctrine/Controller/Helper', 'ZFDoctrine_Controller_Helper' );

        
        // Initialises application pagination. 
        Zend_Paginator::setDefaultScrollingStyle('Sliding' );
        Zend_View_Helper_PaginationControl::setDefaultViewPartial('paginators/default.phtml' );
         
        //Setup flashmessenger          
        $fm 		   = Zend_Controller_Action_HelperBroker::getStaticHelper('flashMessenger' );
        $userMessage   = '';
        $messages      = $fm->getMessages();
        $totMessages   = count($messages );
        
        if($totMessages > 0){
            $lastMessage = $messages[$totMessages - 1];
            if($lastMessage instanceof Rhema_Dto_UserMessageDto){
                $userMessage = clone ($lastMessage);
            }else if(is_string($lastMessage )){
                $userMessage = new Rhema_Dto_UserMessageDto($lastMessage );
            }
            $fm->clearCurrentMessages();
        }
        
        $this->_view->userMessage = $userMessage;
        
        return $this->_view;
    }
    public function _initGrid(){
        $this->bootstrap('locale' );
        Bvb_Grid_Deploy_JqGrid::$debug = (APPLICATION_ENV == 'development') ? true : false;
        Bvb_Grid_Deploy_JqGrid::$defaultJqGridLibPath = '/../backend/scripts/grid';
        Bvb_Grid_Deploy_JqGrid::$defaultJqgI18n = Zend_Registry::get('Zend_Locale' );
    }
 
    public function _initCli(){ 
		if (php_sapi_name() == 'cli' and empty($_SERVER['REMOTE_ADDR'])) { 
			echo 'running in command line mode';
			exit();
    	}
    }
    
    public function _initZFDebug(){
        $config = $this->getOption('zfdebug' );
        $zfdebugConfig = ($config['enabled'] or strpos($_SERVER['HTTP_USER_AGENT'],'zfdebug') !== false);
        
        if($zfdebugConfig or APPLICATION_ENV == Rhema_Constant::DEV_ENV){
            $autoloader = Zend_Loader_Autoloader::getInstance();
            $autoloader->registerNamespace('ZFDebug' );
            $list = array();
            $front = $this->bootstrap('frontController' );
            $cacheManager = Zend_Registry::get('cache-manager' );
            foreach($cacheManager->getCaches() as $name => $cache){
                $list[$name] = $cache->getBackend();
            }
            $options = array('plugins' => array('Variables', 'Rhema_Plugin_ZFDebug_Doctrine', 'File' => array('base_path' => APPLICATION_PATH . '/../'), 'Memory', 'Time', 'Registry', 'Exception', 'Cache' => array('backend' => $list)));
            $debug = new ZFDebug_Controller_Plugin_Debug($options );
            Zend_Controller_Front::getInstance()->registerPlugin($debug );
            return $debug;
        }
    }
    public static function autoload($path){
        include str_replace('_', '/', $path ) . '.php';
        return $path;
    }
 
 
    public function byPass(){
        $url = isset($_SERVER['REQUEST_URI'] ) ? $_SERVER['REQUEST_URI'] : '';
        if(strstr($url, 'bypass' ) !== false){
            $ajax = new Rhema_Ajax_Responce($url, $this );
            $output = $ajax->process($url );
            die($output );
        }
    }
    public function run(){
        $this->frontController = $this->getResource('FrontController' );
        $this->byPass();
        parent::run();
    }
    
    public function getSiteCache($cacheType = 'page', $front = 'page', $back = 'file'){
        $option = array();
        /*		if (extension_loaded ( 'apc' ) and $front != 'page') {

			$back  = 'apc';

		}*/
        $secs[] = $front;
        $secs[] = $back;
        $template = implode('-', array_filter($secs ) );
        $cacheDir = realpath(APPLICATION_PATH . '/../sites/' ) . '/' . SITE_DIR . '/cache/' . $cacheType;
        if(! file_exists($cacheDir )){
            mkdir($cacheDir, 0777, true );
        }
        $option['frontend']['options']['cache_id_prefix'] = 'static';
        $option['frontend']['options']['cached_entity'] = $this;
        $option['backend']['options']['cache_dir'] = $cacheDir;
        $siteCache = Rhema_Cache::getCacheByTemplate($template, $option );
        $this->frontController->setParam('pageCache', $siteCache );
        Zend_Registry::set('pageCache', $siteCache );
        return $siteCache;
    }
    
    public function updateElements(){
        $res = Doctrine_Query::create()->from('Admin_Model_AdminElement e' )->execute();
        foreach($res as $arr){
            $cont = $arr->controller;
            $act = $arr->action;
            $arr->widget = ucfirst($cont ) . '~' . $act;
        }
        $res->save();
    }
    
    /**
     * Enter description here ...
     * @param unknown_type $dbParams
     * @return string
     */
    private function _getConnectionString($dbParams){
       $conString  = $dbParams['scheme'] 
                	. '://' 
			        . $dbParams['username'] 
			        . ($dbParams['password'] ? ':' . $dbParams['password'] : '') 
			        . '@' 
			        . $dbParams['host'] 
			        . '/' 
			        . $dbParams['dbname'];   
		return $conString;	
    }
}