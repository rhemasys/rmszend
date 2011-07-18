		
		
		$manager->openConnection ( $doctrineConfig ['connection_string']['con1'] );
		$manager->setCurrentConnection('con2');
		Doctrine::loadModels($doctrineConfig ['models_path']['con2']);
		
		Doctrine_Core::generateModelsFromDb($doctrineConfig ['models_path'],array('rhemasys_dev'),array(
			'generateTableClasses'=> false
			,'baseClassPrefix'    => 'Base_'
			,'baseClassDirectory' => 'base'
			,'classPrefixFiles'   => false
			,'classPrefix'        => MODEL_PREFIX 
			,'pearStyle'          => true
			,'phpDocEmail'        => 'info@rhema-webesign.com'
			,'phpDocName'         => 'Pele Odiase'
			,'phpDocSubpackage'   => 'RhemaSys'
		))  ;
		
		$yamlParam = array(
			'generateTableClasses'=> false
			,'baseClassPrefix'    => 'Base_'
			,'baseClassesDirectory' => ''
			,'classPrefixFiles'   => false
			,'classPrefix'        => MODEL_PREFIX 
			//,'classPrefix'        => HELP_PREFIX
			//,'classPrefix'        => 'Ecom_Model_' 
			,'pearStyle'          => true
			,'phpDocEmail'        => 'info@rhema-webesign.com'
			,'phpDocName'         => 'Pele Odiase'
			,'phpDocSubpackage'   => 'RhemaSys'
			,'baseClassName'      => 'Rhema_Model_Abstract'
		);
		 
		//Doctrine_Core::dropDatabases();
		//Doctrine_Core::createDatabases('rhemasys_dev'); 
		//Doctrine_Core::createDatabases('help_center'); 
		// Doctrine_Core::compile();
		//Doctrine_Core::createTablesFromModels($doctrineConfig ['models_path']['con1']);
		//Doctrine_Core::generateYamlFromDb($doctrineConfig ['yaml_schema_path'],array('rhemasys_dev'));
		//Doctrine_Core::generateModelsFromDb($doctrineConfig ['models_path'], array('rhemasys_dev'),$yamlParam);
		//Doctrine_Core::generateYamlFromModels($doctrineConfig ['yaml_schema_path'],$doctrineConfig ['models_path']);
		//Doctrine_Core::generateModelsFromYaml($doctrineConfig ['yaml_schema_path']['con1'],$doctrineConfig ['models_path']['con1'],$yamlParam);
		//Doctrine_Core::generateSqlFromModels($doctrineConfig ['models_path']);
		
		/*Doctrine_Core::generateMigrationsFromDiff(  $doctrineConfig ['migrations_path'],
													$doctrineConfig ['yaml_schema_path'] . '/schema.yml',
													$doctrineConfig ['yaml_schema_path'] . '/schema_new.yml');
		*/
		//Doctrine::compile(null, array('mysql'));
		//===================== Register Plugins =======================================
		
		/*
	protected function _initSmarty(){
		$config             = (object) $this->getOption('smarty');
		$smartyViewRenderer = new Zend_Controller_Action_Helper_ViewRenderer();		
		$smartyViewRenderer->setViewScriptPathSpec(":module/:controller/:action.:suffix");
		$smartyViewRenderer->setView(new Rhema_Adapter_Smarty_View($config));
		//$smartyViewRenderer->setViewSuffix('tpl');
		Zend_Controller_Action_HelperBroker::addHelper($smartyViewRenderer);
	}
 
	protected function _initDwoo(){	
		$config    = $this->getOption('dwoo');
		require_once APPLICATION_PATH . '/../library/Dwoo/Dwoo.php';
		$autoloader = new Zend_Application_Module_Autoloader ( array (
			'namespace' => 'Dwoo_', 
			'basePath'  => APPLICATION_PATH . '/../library/Dwoo' ) 
		);
		
		$viewInterface = new Dwoo_Adapters_ZendFramework_View($config); 		
		$viewRenderer  = new Zend_Controller_Action_Helper_ViewRenderer($viewInterface);
		Zend_Controller_Action_HelperBroker::addHelper($viewRenderer);
		
		return $autoloader;
	}
	 
	protected function _initDojo(){
		$this->_view->addHelperPath('Zend/Dojo/View/Helper/', 'Zend_Dojo_View_Helper');
		$viewRenderer = new Zend_Controller_Action_Helper_ViewRenderer();		
		$viewRenderer->setView($this->_view);			 
		Zend_Controller_Action_HelperBroker::addHelper($viewRenderer);
	}
	
	*/
	
	 /*protected function _initMenu(){ 
		
		 
		$roots = array('Top', 'Main','Bottom','Account','Side');
		foreach($roots as $a){
			$menu = new Admin_Model_Menu();
			$menu->title = $a;
			$menu->module = 'storefront';
			$menu->controller = 'index';
			$menu->action = 'index';
			$menu->label = $a . ' Menu';
			$menu->description = $a . ' menus';
			
			$menu->save();
			//$menu = Doctrine_Core::getTable('Rms_Model_AdminMenu')->findBy('id',$menu->id);
			
			$tree = Doctrine_Core::getTable('Admin_Model_Menu')->getTree();		 
			$tree->createRoot($menu);
			 
		}
		
		$roots = array('Admin', 'Cms','Blog','eCom','Email');
		foreach($roots as $a){
			$menu = new Admin_Model_AdminMenu();
			$menu->title = $a;
			$menu->module = strtolower($a);
			$menu->controller = 'index';
			$menu->action = 'index';
			$menu->label = $a . ' Menu';
			$menu->description = $a . ' menus';
			$menu->image       = strtolower($a) . '.png';
			
			$menu->save();
			//$menu = Doctrine_Core::getTable('Rms_Model_AdminMenu')->findBy('id',$menu->id);
			
			$tree = Doctrine_Core::getTable('Admin_Model_AdminMenu')->getTree();		 
			$tree->createRoot($menu);
			 
		}
		
		 
		$in = new Rms_Model_AdminDictionary();
		$in->title = 'created_at';
		$in->label = 'Created';
		$in->save();
		
		$tbl   = Doctrine_Core::getTable('Rms_Model_AdminMenu');
		$root  = $tbl->findBy('id',6);
		$child = $tbl->findBy('id',8);
		 
	
		$obj   =  $child->get(0);
		
		$obj->getNode()->insertAslastChildOf($root->get(0));
		
	} 
	*/