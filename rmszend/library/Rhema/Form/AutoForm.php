<?php 
class Rhema_Form_AutoForm extends ZFDoctrine_Form_Model {
	    public function init(){
	    	parent::init();
	    	$langResource  = realpath(APPLICATION_PATH . '/../library/resources');
	        
	        $translator = new Zend_Translate(array(
	        	'adapter'	=> Zend_Translate::AN_ARRAY,
	            'content'   => $langResource,
	            'locale'	=> Zend_Registry::get('Zend_Locale'),
	            'scan'	    => Zend_Translate::LOCALE_DIRECTORY
	        ));
	        
	    //    Zend_Validate_Abstract::setDefaultTranslator($translator);
	  //      $this->setTranslator($translator);
	        
	        $this->addElement('hash', 'csrf', array(
	            'ignore' 		=> true
	        	//'decorators' 	=> array('ViewHelper',),
	        ));
	        
	    }
	    public function loadDefaultDecorators(){
	        $this->setDecorators(array(
	        	array('Description', array('tag' => 'p', 'class' => 'form-info')),
	            'FormElements',
	            array('HtmlTag', array('tag' => 'div', 'class' => 'rhema_form')),
	            'Form'
	        ));
	    }	
}