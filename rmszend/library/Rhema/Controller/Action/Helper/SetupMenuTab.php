<?php
class Rhema_Controller_Action_Helper_SetupMenuTab extends Rhema_Controller_Action_Helper_Abstract{
	
	public function direct($table){
		$request	 	= $this->getRequest();
		$view 			= Zend_Layout::getMvcInstance()->getView(); 
		$root_id 		= $request->getParam('root_id', 1);		
		$displayAjax 	= $request->getParam('ajx', null);
		 		
		$menuOption 	= array( 'root_id' => $root_id);
		$menuObject 	= Rhema_Model_Service::factory($table);
		
		$treeDto 		= $menuObject->getMenuTree($menuOption, $menuObject->getModelName()); 
		
		$view->menuUrl 		= $view->url(array( 'table' => $table), 'cms-menu-tree');
		$view->currentTable = $table; 
		$view->root_id 		= $root_id;
		$view->dto 			= $treeDto;
		
		$urlParm 	= array( 'table' => $table,  'root_id' => $root_id);	
		$gridParam 	= Rhema_SiteConfig::getConfig('grid.jqgrid.menu-tables');	 
		$gridParam['editurl'] 	= $view->url($urlParm, 'grid-model-save');  
		$options['gridParam'] 	= $gridParam;
		$options['model'] 		= $table;
		
		$gridService 	= new Rhema_Grid_Service($options);
		$grid 			= $gridService->setType('jqGrid')->generateGrid();
		$view->gridId 	= $grid->makeGridId();
		
		if($request->isXmlHttpRequest()){
			if($displayAjax){
				$str = $gridService->ajaxDespatch($grid, 'partials/menutree');
				Rhema_Util::setAjaxData($str);
			}else{
				$view->gridData = $grid->deploy();
			}
		}else{
			$grid->jqInit();
		}
	}
}