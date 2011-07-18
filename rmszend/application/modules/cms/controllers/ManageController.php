<?php

/**
 * ManageController
 * 
 * @author
 * @version 
 */

require_once 'Zend/Controller/Action.php';

class Cms_ManageController extends Rhema_Controller_Abstract {
	/**
	 * The default action - show the home page
	 */
 
	public function indexAction() {
		// TODO Auto-generated ManageController::indexAction() default action
	}
	
	public function eventAction(){   	
    	$this->_table 				= 'event';
    	$this->displayGrid(); 	
	}
 
	public function newsAction(){   	
    	$this->_table 				=  'news';
    	$this->displayGrid(); 
	}
	
	public function userAction(){   	
    	$this->_table 				=  'user';
    	//$this->_request->setParam('sidx',$this->_request->getParam('sidx', 'lastname'));
    	$this->displayGrid();  
	}
	
	public function portfolioAction(){
    	$this->_table 				= 'portfolio';
    	$this->displayGrid(); 		
	}
	
	public function reviewAction(){
    	$this->_table 				= 'portfolio_comment';
    	$this->displayGrid(); 		
	}
}
