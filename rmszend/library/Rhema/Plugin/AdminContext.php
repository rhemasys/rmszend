<?php
/**
 * This plugin switches the page layout if the flag isAdmin is set
 * It hooks in in the pre-despatch process of the front controller
 */
class Rhema_Plugin_AdminContext extends Zend_Controller_Plugin_Abstract{

	protected $_context = 'site';
	protected $_loggedIn;

	public function routeShutdown(Zend_Controller_Request_Abstract $request){
		$controllerName = $request->getControllerName();
		$layout = Zend_Layout::getMvcInstance();
		if($controllerName == 'setup'){
			$layout->setLayout('setup');
		}elseif(! preg_match('/(rest|soap)/i', $controllerName)){
			$path = array();
			$view = $layout->getView();

			$baseUrl = '/' . $request->getServer('RMSDIR'); // Zend_Controller_Front::getInstance()->getBaseUrl();
			$util = Rhema_Util::getInstance();

			//============== force login for new sites
			$util->forceLogin();

			$context = CONTEXT_SITE;
			$auth = Zend_Auth::getInstance();

			$user = $auth->getIdentity();
			$userRole = (is_array($user) and ($user['Role'])) ? strtolower($user['Role']['title']) : 'guest';
			Zend_Registry::set(Rhema_Constant::USER_ROLE_KEY, $userRole);

			if(! defined('BASE_URL')){
				define('BASE_URL', $baseUrl);
			}

			$editorConfigFile = SITE_PATH . '/fckpath.txt';

			if(! file_exists($editorConfigFile)){
				$path['site']['rel'] = BASE_URL . '/media/';
				$path['site']['abs'] = realpath(SITE_PATH . '/../') . $path['site']['rel'];

				$path['admin']['rel'] = '/';
				$path['admin']['abs'] = realpath(SITE_PATH . '/../') . $path['admin']['rel'];

				file_put_contents($editorConfigFile, Zend_Json::encode($path));
			}

			Zend_Registry::set('baseUrl', $baseUrl);

			if(! $request->isXmlHttpRequest()){
				$this->_loggedIn = $auth->hasIdentity();

				if($request->getParam('isControlPanel')){
					if($this->_loggedIn){
						$context = CONTEXT_ADMIN;
					}else{
						Admin_Service_Authenticate::pleaseLogin();
					}
				}
 
				//$aclObject = Rhema_Model_Service::factory('admin_acl');
				//$acl = $aclObject->getAcl($context);
				$acl  = $util->getAcl($context);
				$m    = $request->getModuleName();
				$c    = $request->getControllerName();
				$priv = $request->getActionName();

				$resource = "mvc:$m.$c";
				$view->navigation()->setAcl($acl)->setRole($userRole);

				if($acl->has($resource) and ! $acl->isAllowed($userRole, $resource, $priv)){
					$broker = Zend_Controller_Action_HelperBroker::getStaticHelper('redirector');
					$url = $view->url(array(), 'frontend-access-denied', true);
					$broker->gotoUrlAndExit($url);
					/*						if($context == CONTEXT_ADMIN and 'guest' != $userRole){
							$url   = $view->url(array(), 'backend-access-denied', true);
						}else{
							$url   = $view->url(array(), 'frontend-access-denied', true);
						}
						$broker->gotoUrlAndExit($url);*/
				}

			}else{
				//Zend_Controller_Front::getInstance()->throwExceptions(true);
			}
			Zend_Registry::set('sys-layout-context', $context);
		}
	}

	public function setControlHeader(){
		$theme = '';
		$util = Rhema_Util::getInstance();
		$context = Zend_Registry::get('sys-layout-context');
		$application = Zend_Registry::get('application');

		$view = $application->getBootstrap()->getResource('view');
		$view->addScriptPath(APPLICATION_PATH . '/layouts/scripts');
		$jsFiles = $util->getHeaderFiles();
		$uniqueJsFiles = $util->getHeaderFiles('uniqueJs');
		$cssFiles = $util->getHeaderFiles('css');
		$uniqueCssFiles = $util->getHeaderFiles('uniqueCss');

		$editMode = (Zend_Registry::isRegistered('edit_mode')) ? Zend_Registry::get('edit_mode') : 0;

		//$config             = Zend_Registry::get('site-config');
		$theme = trim(Zend_Registry::get('site-theme'));
		$view->theme = $theme ? $theme : 'default';
		$siteDir = SITE_DIR ;
		$view->headScript()->appendFile("/min/g={$context}.js&dir=$siteDir");
		$view->headLink()->appendStylesheet("/min/g={$context}.css&dir={$siteDir}&theme=$theme");

		if(CONTEXT_ADMIN == $context){
			//$uniqueJsFiles[] =  '/../backend/editors/fckeditor/fckeditor.js';
			$uniqueJsFiles[] = '/backend/editors/ckeditor/ckeditor.js';
			$uniqueJsFiles[] = '/backend/editors/ckeditor/adapters/jquery.js';
			$uniqueJsFiles[] = '/backend/scripts/jpicker/jpicker-1.1.6.min.js';
			//$uniqueJsFiles[] = 'http://cdn.jquerytools.org/1.2.5/all/jquery.tools.min.j';
			//$jsFiles[] =  '/ckeditor/ckeditor.js';
			//$jsFiles[] =  '/ckeditor/adapters/jquery.js';
			$jsFiles[] = '/global.js';
			$jsFiles[] = '/rhemasys.js';

		//	$jsFiles[] = '/jstree/jquery.jstree.js';
		}else{
			$jsFiles[] = '/global.js';
			$siteScriptPath = SITE_PATH . '/' . $theme . '/scripts';
			$iterator = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($siteScriptPath), RecursiveIteratorIterator::CHILD_FIRST);
			foreach($iterator as $filename => $path){
				if(! $path->isDir() and substr($filename, - 3) == '.js'){
					$file = $theme . '/scripts/' . basename($filename);
					$view->headScript()->appendFile($file);
				}
			}
		}

		array_unique(array_filter($jsFiles));
		array_unique(array_filter($uniqueJsFiles));
		array_unique(array_filter($cssFiles));
		array_unique(array_filter($uniqueCssFiles));

		foreach($jsFiles as $file){
			$view->headScript()->appendFile(SCRIPT_PATH . $file);
		}

		foreach($uniqueJsFiles as $file){
			$view->headScript()->appendFile($file);
		}

		foreach($cssFiles as $file){
			$view->headLink()->appendStylesheet(CSS_PATH . $file);
		}

		foreach($uniqueCssFiles as $file){
			$view->headLink()->appendStylesheet($file);
		}

		//================================================================================================
	}

	public function postDispatch(Zend_Controller_Request_Abstract $request){
		$util = Rhema_Util::getInstance();
		$front = Zend_Controller_Front::getInstance();
		$hasError = $front->getResponse()->isException();

		if($request->isXmlHttpRequest()){
			$data = $util->getAjaxData();
			$data = $data ? $data : null;
			die($data);
		}elseif(! $hasError){

			if($request->getParam('isControlPanel') and $this->_loggedIn){
				$layout = Zend_Layout::getMvcInstance();
				$modObject = Rhema_Model_Service::factory('AdminModule');
				$navData = $modObject->moduleNavigation($request->getModuleName(), $this->_loggedIn);
				Zend_Registry::set(Rhema_Constant::NAVDATA_KEY, $navData);
				$layout->setLayout('admin');

		//Zend_Registry::set('navRoots',$navData['modules']);
			//Zend_Registry::set('mainContainer',$navData['container']);
			//Zend_Registry::set('activeModule', $navData['moduleData']);
			}
			$this->setControlHeader();
		}
	}
}