<?php
/**
 * This plugin builds the front end page layout based on backend setup
 * @author Pele
 *
 */
class Rhema_Plugin_LayoutControl extends Zend_Controller_Plugin_Abstract{

	public $headerTags = array('page_header_id', 'page_footer_id', 'page_body_id', 'page_id');
	protected $_view;
	protected $_params = array();
	
	protected $_exeptActions = array(
		'feed'
	);

	private   $_layoutObject ;
	private   $_tempObject ;
	private   $_util ;
	private   $_objectStack = array();
	
	

	public function routeStartup(Zend_Controller_Request_Abstract $request){
		$namespace        = Zend_Registry::get('namespace');
		$valid            = false;
		$siteConfig       = array();
		$this->_util      = Rhema_Util::getInstance();

		if($namespace->subsiteId){
			$valid        = true;
			$siteConfig   = $namespace->siteconfig;
		}else{
			$domain       = $this->_util->getRegisteredHostname();
			$useCachedLic = Rhema_SiteConfig::getConfig('settings.cache_licence');
			$siteConfig   = $this->_util->validateLicense($domain, SITE_DIR);
			 
			if($siteConfig and isset($siteConfig['subsite']['id'])){ 			 
				$namespace->siteconfig = $siteConfig;
				$namespace->subsiteId  = $siteConfig['subsite']['ssid'];
				$namespace->uniqueId   = $siteConfig['subsite']['id'];
				$valid = true; 
			}
		}

		if(! $valid){
			die('Site not registered');
		}

		Zend_Registry::set(Rhema_Constant::SITE_THEME_KEY, $siteConfig['subsite']['colour_scheme']);
		Rhema_Util::setSessData(Rhema_Constant::SITE_CONFIG_KEY, $siteConfig);
	}

	/**
	 * Entry point. Run if not admin
	 */
	public function routeShutdown(Zend_Controller_Request_Abstract $request){
			//$routename = Zend_Controller_Front::getInstance()->getRouter()->getCurrentRouteName();
			//pd($routename);
		$this->_layoutObject = Rhema_Model_Service::factory('PageLayout');
	 	$this->_tempObject   = Rhema_Model_Service::factory('TemplateSection');
	 		
		if(! $request->isXmlHttpRequest() and ! preg_match('/(rest|soap|setup)/i', $request->getControllerName())){
			$actCode = $request->getActionName();
			$actCode = $request->getParam('slug', $actCode);
			//pd($request->getParams());

			if(! $request->getParam('isControlPanel') and $actCode != 'logout'){
				$layout      = Zend_Layout::getMvcInstance();
				$this->_view = $layout->getView();
				$editMode    = $request->getParam('editmode', null);

				if($editMode != null){
					$this->_util->setSessData('editmode', $editMode);
				}

				$pageDef    = Rhema_Model_Service::factory('page')->getPageDefinition($actCode);
				$page       = ($pageDef and count($pageDef)) ? $pageDef : array();

				if($page){
					$this->_util->setSessData('active-page', $page);
					$headerAndFooter = $this->_layoutObject->getHeaderFooterItems($page);

					foreach($headerAndFooter as $type => $typeData){   ;
						$sectionKey          = $type . 'Sections';
						$layout->$sectionKey = $typeData['sections'];
						$layout->$type       = $typeData['layout'];
						$this->setLayoutItems($typeData['stack'], $type);
					}

					$tempLay     = $this->_layoutObject->getPageLayout( $page['id'], $page['template_id'], 'Page');

					$layout->pageData         = $page;
					$layout->PageBodySections = $this->_tempObject->getTemplateSections($page['template_id'],
												Doctrine_core::HYDRATE_ARRAY, $page['id'], true);
					$layout->PageBody         = $tempLay['layout'];
					$stack                    = $tempLay['stack'];
					$this->setLayoutItems($stack);
				}elseif(array_search($actCode, $this->_exeptActions)=== false){
				    $broker = Zend_Controller_Action_HelperBroker::getStaticHelper('redirector');
				    $broker->gotoRouteAndExit(array(), 'site-default-route');
				}
			}
		}
	}

	/**
	 * Run through the page layout stack and execute their controllers
	 * Assign return values to the layout instance
	 * @param $stack
	 * @return none
	 */
	public function setLayoutItems($stack, $displaySection = 'PageBody'){
		$memManager = Rhema_Util::getMemoryManager();
		$layout     = Zend_Layout::getMvcInstance();
		$filter     = new Zend_Filter_Word_CamelCaseToDash();
		$loggedIn   = Zend_Auth::getInstance()->hasIdentity();

		unset($this->_params['element-position']);

		foreach($stack as $stackId => $items){
			foreach($items as $itemType => $data){
				$content     = '';
				$itemId      = $data['item'];
				$formatted   = $this->_util->formatItemId('lay', $stackId);
				$res         = array();
				$res['type'] = $itemType;

				if(!isset($this->_objectStack[$itemType])){
					$this->_objectStack[$itemType] =    Rhema_Model_Service::factory($itemType);
				}

				$object = $this->_objectStack[$itemType] ;

				switch($itemType){
					case 'admin_element' :
						{
							$item = $object->getElement($itemId);
							if($item){
								list($controller, $method) = explode(WIDGET_SEP, $item['widget']);
								$className   = $this->_util->getWidgetClassname($controller);
								$classObject = new $className();
								$methodName  = $this->_util->getMethodName($method);
								$parameter   = array('pageSection' => $displaySection);

								if(is_object($classObject) and method_exists($classObject, $methodName)){
									$content = $classObject->$methodName($parameter);
									//$content = call_user_func(array($classObject, $methodName), $parameter);
								}

								$res['item']       = $item;
								$res['widgetView'] = $this->_util->getWidgetViewName($item['widget']);
								$res['content']    = $content;
							}
							break;
						}
					case 'component' :
						{
							$item           = $object->getItem($itemId);
							$res['content'] =  $item['content'] ; //$this->replaceAnchorsWithText($item['content']);
							$res['item']    = $item;

							break;
						}

					case (substr($itemType, - 4) == 'menu') :
						$res['type']   = 'Menu';
					case (substr($itemType, - 5) == 'crumb') :
						{
							$treeOption     = array('root_id' => $itemId);
							$res['content'] = $object->getMenuTree($treeOption, $object->getModelName(), $loggedIn);
							$res['type']    = $res['type'] ? $res['type'] : 'Crumb';
							break;
						}

					case 'boiler_plate' :
						{
							$content = '';
							break;
						}

					default :
						{
							$content = '';
						}
				}

				$this->addToLayout($formatted, $res);

			}
		}
	}
	/**
	 * Helper function to assign return values the layout stack
	 * @param $key
	 * @param $data
	 * @return none
	 */
	public function addToLayout($key, $data){
		$layout           = Zend_Layout::getMvcInstance();
		$itemList         = $layout->itemList ? $layout->itemList : array();
		$itemList[$key]   = $data;
		$layout->itemList = $itemList;
	}


	/**
	 * Helper function to replace anchor links in static content with text place holders
	 * @param $data
	 * @return string
	 */
	public function replaceAnchorsWithText($data){
		/*$matches = array ();
		$regex = '/href=[\'"]+?\s*(?P<link>\S+)\s*[\'"]+?/i';
		$count = preg_match_all ( $regex, $data, $matches );

		if ($count and isset ( $matches ['link'] )) {
			foreach ( $matches ['link'] as $i => $v ) {
				$v = str_replace ( '_', '-', strtolower ( $v ) );
				$param = array ('action' => $v, 'module' => DEFAULT_MODULE, 'controller' => 'index' );
				$find [] = '/' . $matches [0] [$i] . '/';
				$replace [] = 'href="' . $this->_view->url ( $param, FRONT_MENU_ROUTE ) . '"';
			}

			$res = preg_replace ( $find, $replace, $data );
		} else {
			$res = $data;
		}

		return $res;
		*/
		return $data;
	}
 }