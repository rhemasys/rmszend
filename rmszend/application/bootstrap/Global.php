<?php
define('SITE_DIR', basename(SITE_PATH ) );
defined('APPLICATION_PATH' ) || define('APPLICATION_PATH', realpath(dirname(__FILE__ ) . '/../../application' ) );

set_include_path(implode(PATH_SEPARATOR, array(
                realpath(APPLICATION_PATH . '/../library' ),
                realpath(APPLICATION_PATH . '/../library/Zend' ),
                realpath(APPLICATION_PATH . '/../library/Doctrine' ),
                realpath(APPLICATION_PATH . '/../library/vendor' ))
                )
);


include ('Rhema/Constant.php');
include APPLICATION_PATH . '/../debug/debug_functions.php';
include_once 'Rhema/SiteConfig.php';
require_once 'Zend/Application.php';

if(isset($_SERVER['HTTP_USER_AGENT']) and strpos($_SERVER['HTTP_USER_AGENT'],Rhema_Constant::MOD_HEADER_KEY) !== false){
    $env = Rhema_Constant::DEV_ENV;
}else{
    $env = array_key_exists('APPLICATION_ENV', $_SERVER ) ? $_SERVER['APPLICATION_ENV'] : Rhema_Constant::PRD_ENV;
}

define('APPLICATION_ENV', $env );

$siteOptions = Rhema_SiteConfig::getInstance()->processConfigFiles(SITE_DIR );
$application = new Zend_Application(SITE_DIR, $siteOptions );
$autoloader  = Zend_Loader_Autoloader::getInstance();

$autoloader->setDefaultAutoloader(array('Bootstrap', 'autoload') ); 
Zend_Registry::set('application', $application );

if(isset($_REQUEST['bypass'] ) and $_REQUEST['bypass']){
    $ajax = new Rhema_Ajax_Responce($_SERVER['REQUEST_URI'], $bootstrap );
    die($ajax->process($_SERVER['REQUEST_URI'] ) );
}

$application->bootstrap(array('cli','session','cache'))
		    ->bootstrap()
            ->run();
 



