<?php

class Blog_IndexController extends Rhema_Controller_Abstract{

    public function init(){
    
        /* Initialize action controller here */
        parent::init();

    }

    public function indexAction(){
		$this->view->moduleData  = $this->getModuleData();
    }
    
    public function categoryAction(){    	
    	$this->_table 				=  'blog_category';
    	$this->displayGrid();  
    }

    public function commentAction(){    	
    	$this->_table 				=  'blog_comment';
    	$this->displayGrid(); 
 
    }
         
    public function addpostAction(){ 	
    	$this->_table 				=  'blog_post';
    	$this->displayGrid(); 
    }

}