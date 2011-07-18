<?php

class RestController extends Rhema_Controller_Abstract{

	private $_restClass     = 'Admin_Service_Server';

    public function init(){

    }


    public function indexAction()    {
    	$this->_helper->viewRenderer->setNoRender();
    	$this->_helper->layout->disableLayout();

        $server = new Zend_Rest_Server();
        $server->setClass($this->_restClass);
        $server->handle();
        exit();
    }
}