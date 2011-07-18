<?php
/**
 *
 * @author Pele
 * @version
 */
require_once 'Zend/View/Interface.php';

/**
 * SetMetaTags helper
 *
 * @uses viewHelper Zend_View_Helper
 */
class Rhema_View_Helper_SetMetaTags extends Zend_View_Helper_Abstract{

	public $view;

	/**
	 *
	 */
	public function setMetaTags($title, $description = '', $keyword = '') {
	    $title       = array_unique($title)	;
	    $title       = $this->view->replaceMergeField($title);
	    $description = substr($this->view->replaceMergeField($description),0,160);
	    $keyword     = $this->view->replaceMergeField($keyword);
	    $alexaVerifyID      = Rhema_SiteConfig::getConfig('settings.alexa_site_verification');
	    $googleVerification = Rhema_SiteConfig::getConfig('settings.google_site_verification'); 
	    
 
		foreach((array)$title as $item){
			if($item){
			    $title  = $this->view->replaceMergeField($item);
				$this->view->headTitle(ucwords($item));
			}
		}

		$this->view->headMeta()->appendName('description', $description)
							   ->appendName('google-site-verification', (string) $googleVerification)							   
		                       ->appendName('keywords', ucwords($keyword));
		if($alexaVerifyID){
			$this->view->headMeta()->appendName('alexaVerifyID', $alexaVerifyID);
		}
		
		return null;
	}
}
