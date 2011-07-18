<?php
/**
 *
 * @author Pele
 * @version 
 */
 
/**
 * IncludeJs helper
 *
 * @uses viewHelper Zend_View_Helper
 */
class Rhema_View_Helper_IncludeCss extends Zend_View_Helper_Abstract {
 
	protected $_scriptPath = '/backend/';
	
	public function includeCss($list = '') {
		$list = (array) $list ;
		foreach($list as $file){ 
			$fullpath = str_replace('//', '/', $this->getScriptPath() . $file);
			$this->view->headLink()->appendStylesheet($fullpath); 
		}
		return null;
	}
	/**
	 * @return the $_scriptPath
	 */
	public function getScriptPath() {
		return $this->_scriptPath;
	}

	/**
	 * @param field_type $_scriptPath
	 */
	public function setScriptPath($_scriptPath) {
		$this->_scriptPath = $_scriptPath;
	}

 
}
