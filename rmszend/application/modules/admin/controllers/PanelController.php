<?php
 
class Admin_PanelController extends Rhema_Controller_Abstract {
	/**
	 * The default action - show the home page
	 */
	public function indexAction() {
		// TODO Auto-generated PanelController::indexAction() default action
	}
	
	public function databaseTaskAction(){
		$schemaPaths  = Rhema_SiteConfig::getConfig('doctrine.yaml_schema_path');
	}

}
