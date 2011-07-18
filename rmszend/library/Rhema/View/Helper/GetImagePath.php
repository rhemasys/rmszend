<?php
/**
 *
 * @author Pele
 * @version 
 */
require_once 'Zend/View/Interface.php';

/**
 * GetImagePath helper
 *
 * @uses viewHelper Rhema_View_Helper
 */
class Rhema_View_Helper_GetImagePath extends Zend_View_Helper_Abstract {  
	
	const GRAPHIC 		= '/graphics';
	const ICON     		= '/icons';
	const DEFAULT_THEME = 'default';
	const IMAGE_DIR     = 'images';
	
	private static $_theme;
	/**
	 * 
	 */
	public function getImagePath() { 
		self::$_theme = Zend_Registry::isRegistered(Rhema_Constant::SITE_THEME_KEY) 
						? Zend_Registry::get (Rhema_Constant::SITE_THEME_KEY)
						: self::DEFAULT_THEME;
		return $this; 
	}
	
	public  function generic($path = ''){
		$return  = '/media/image/' . $path;
		return $this->_stripDoubleSlashed($return);
	}

	public function icon($path = ''){
		$return =  '/' . SITE_DIR . '/' .  self::$_theme . '/' . self::IMAGE_DIR . '/'. self::ICON . '/' . $path;
		return $this->_stripDoubleSlashed($return);
	}
	
	public function graphic($path = ''){
		$return  = '/' . SITE_DIR . '/' .  self::$_theme . '/' . self::IMAGE_DIR . '/'. self::GRAPHIC . '/' . $path;
		return $this->_stripDoubleSlashed($return);
	}
	
	public function backendIcon($filename = ''){
		$return  =  '/backend/images/icons/' . $filename;
		return $this->_stripDoubleSlashed($return);
	}
	
	public function backendGraphic($filename = ''){
		$return  =  '/backend/images/graphicss/' . $filename;
		return $this->_stripDoubleSlashed($return);
	}
	
	private function _stripDoubleSlashed($string){
		return str_replace('//', '/', $string);
	}
}
