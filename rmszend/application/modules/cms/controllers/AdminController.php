<?php

class Cms_AdminController extends Rhema_Controller_Abstract{
	
	public function init(){
		
		/* Initialize action controller here */
		parent::init();
	
	}
	
	public function indexAction(){
		$form = new Rhema_Form_AutoForm(array(
            'model' => 'Admin_Model_Page',
            'action' => '.',
            'method' => 'post'
        ));
		
        $this->view->form = $form;
	}
	
	public function settingAction(){
		$this->_table = MODEL_PREFIX . 'Setting';
		$this->_baseUrl = Zend_Registry::get('baseUrl');
		
		$local = Admin_Model_Setting::getAllSettings();
		$form  = $this->getCached()->getSettingForm();
		$form->populate($local);
		$this->view->form = $form;
	
	}
	
	public function helpAction(){
 $this->_request->setParam('treeGrid', true);
		$option['model'] = 'role'; 
		
		$gridService = new Rhema_Grid_Service($option);		
		$grid        = $gridService->setType('jqGrid')
						           ->generateGrid() ;
		//$grid->addExtraColumns($gridService->getActionBarColumn());
		 
	 
 	 
		//$form = new Bvb_Grid_Form(new Rhema_Form_AutoForm());
		//$grid->setSource($source);
		
	//	$form->setAdd(true)->setEdit(true)->setDelete(true)->setAddButton(true);
		//$grid->setForm($form);
		 
		

        
		//$grid->updateColumn('title', array('title' => 'City name', 'width' => 260));
		//$grid->updateColumn('id', array('title' => '#ID', 'hide' => false));
		//$grid->setCache(array('use'=>array('form'=>'true|false', 'db'=>'true|false'), 'instance'=>Zend_Cache $cache,'tag'=>'my_tag'));
/*		 $grid->setJqgParams(array('caption' => 'jqGrid Example', 'forceFit' => true,		          
			'rowList' => array(10, 15, 50),  
			'altRows' => true) 
			);*/
		//	 $grid->setAjax('test');
		$this->view->grid = $grid->deploy();
	}
 
	public function g1ActionBar($id) {
        $helper = new Zend_View_Helper_Url();
        $actions = array(
            array('href'=>$helper->url(array('action'=>'do', 'what'=>'view', 'id'=>$id)), 'caption'=>'View', 'class'=>'{view}'),
            array('href'=>$helper->url(array('action'=>'do', 'what'=>'edit', 'id'=>$id)), 'caption'=>'Edit', 'class'=>'{edit} fixedClass'),
            array('href'=>$helper->url(array('action'=>'do', 'what'=>'delete', 'id'=>$id)), 'caption'=>'Delete', 'class'=>'{delete}'),
            array('onclick'=>new Zend_Json_Expr('alert("you clicked on ID: "+jQuery(this).closest("tr").attr("id"));'), 'caption'=>'Alert Me')
        );
        return Bvb_Grid_Deploy_JqGrid::formatterActionBar($actions);
    }	
 
}