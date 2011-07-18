<?php

class Ecom_StockController extends Rhema_Controller_Abstract{

    public function init(){

        /* Initialize action controller here */
        parent::init();
		$this->_gridParam['width']      = 870;
    }

    public function indexAction(){

    }

    public function navigationAction(){
   		$request    		= $this->getRequest();
   		$request->setParam('rootType', 'stock');
   		$this->displayGrid();
    }

    public function deliveryMethodAction(){
     	$this->_table = 'ecom_delivery_method';
    	$this->displayGrid();
    }


    public function categoryAction(){
    	$this->_table = 'ecom_category';
    	$this->displayGrid();
    }

    public function productAction(){
    	$this->_table 				=  'ecom_product';
    	$this->displayGrid();
    }

    public function imageAction(){

    }

    public function ordersAction(){

    }

    public function persAction(){
    	$task   = $this->_getParam('task', 'list');
    	$data   = '';
    	if($task){
    		$data = $this->view->layout()->render('per' . $task);
    	}

    	$this->_utility->setAjaxData($data);
    }
}