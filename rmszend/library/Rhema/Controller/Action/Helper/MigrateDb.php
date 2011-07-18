<?php 

class Rhema_Controller_Action_Helper_MigrateDb  extends Rhema_Controller_Action_Helper_Abstract{
	
	public function direct(){
		
		$result         = array();
		$options        = Zend_Controller_Front::getInstance()->getParam('bootstrap')->getOptions();
		$doctrineConfig = $options['doctrine'];	
		$mgPath         = $doctrineConfig['migrations_path']; 	
	 
		if(!file_exists($mgPath)){
			@mkdir($mgPath, 0777, true);
		}
		
		try{	
			$migration = new Doctrine_Migration($doctrineConfig['migrations_path'], 'admin');
			Doctrine_Core::generateMigrationsFromModels($doctrineConfig['migrations_path'], 
						$doctrineConfig['model_path']['admin']);
			
						
			$result['oldVersion'] = $migration->getCurrentVersion();				    
			$migration->migrate();
			$result['newVersion'] = $migration->getCurrentVersion();	
									
		}catch(Exception $e){
			$result['error'] = $e->getMessage();
		};	

		return $result;
	}
}
	