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
class Rhema_View_Helper_IncludeJs extends Zend_View_Helper_Abstract {

	protected $_scriptPath = '/backend/scripts/';

	public function includeJs($list = '', $pos = Rhema_Constant::APPEND) {
		$list = (array) $list ;
		foreach($list as $file){
			$fullpath = str_replace('//', '/', $this->getScriptPath() . $file);
			if($pos == Rhema_Constant::APPEND){
				$this->view->headScript()->appendFile($fullpath);
			}else{
				$this->view->headScript()->prependFile($fullpath);
			}
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
