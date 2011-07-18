<?php					
	$resourcesDir 					= APPLICATION_PATH . '/../data/wurfl/';						
	$wurfl['main-file'] 			= 'wurfl/wurfl-latest.zip';						
	$wurfl['patches'] 				= array ('wurfl/web_browsers_patch.xml' );						
	$persistence['provider'] 		= 'file';						
	$persistence['dir'] 			= APPLICATION_PATH . '/configs/user-agents/wurfl/cache/';						
	$cache['provider'] 				= null;						
	$configuration['wurfl'] 		= $wurfl;						
	$configuration['persistence'] 	= $persistence;						
	$configuration['cache'] 		= $cache;