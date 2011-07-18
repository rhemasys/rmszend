<?php
/**
 * Doctrine CLI script
 */
 
/*define('APPLICATION_ENV', 'development');
 
define('APPLICATION_PATH', realpath(dirname(__FILE__) . '/../application'));
 
set_include_path(implode(PATH_SEPARATOR, array(
    realpath(APPLICATION_PATH . '/../library'),
    realpath(APPLICATION_PATH . '/../library/Doctrine'),
    get_include_path(),
)));
 
require_once 'Zend/Application.php';
 
// Create application, bootstrap, and run
$application = new Zend_Application(
    APPLICATION_ENV,
    APPLICATION_PATH . '/configs/application.ini'
);
 

*/
require realpath(dirname(__FILE__).'/../application/global.php');
$application->getBootstrap()->bootstrap('doctrine');
$cli = new Doctrine_Cli($application->getOption('doctrine'));
$cli->run($_SERVER['argv']);
