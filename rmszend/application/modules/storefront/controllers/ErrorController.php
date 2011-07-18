<?php

class ErrorController extends Zend_Controller_Action
{
	public function init(){	
		if(!$this->_request->getParam('isControlPanel')){
    		$this->_helper->layout()->setLayout('error-display'); 
		}
    	$this->view->headTitle('An Error Occurred', Zend_View_Helper_Placeholder_Container_Abstract::APPEND);
	}

    public function errorAction()
    {
        $errors = $this->_getParam('error_handler');
        $this->getResponse()->clearBody();
        
        switch ($errors->type) { 
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER:
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION:
        
                // 404 error -- controller or action not found
                $this->getResponse()->setHttpResponseCode(404);
                $this->view->message = 'Page not found';
                break;
            default:
                // application error 
                $this->getResponse()->setHttpResponseCode(500);
                $this->view->message = 'Application error';
                break;
        }
        
        
        $this->view->request   = $errors->request;        

        $exception = $errors->exception;   
        $log       = $this->getLog();
       
		if (('development' == APPLICATION_ENV) and $log) {     		 
        	$log->debug($exception->getMessage() . "\n" .  $errors->exception->getTraceAsString()); 
		}

        if ($this->getInvokeArg('displayExceptions') == true) {
            $this->view->exception = $errors->exception;
        }
        
        $this->view->request   = $errors->request;
    }

    public function getLog()
    {
        $bootstrap = $this->getInvokeArg('bootstrap');
        if (!$bootstrap->hasResource('Log')) {
            return false;
        }
        $log = $bootstrap->getResource('Log');
        return $log;
    }
    
    public function denyAction(){
    	
    }

}