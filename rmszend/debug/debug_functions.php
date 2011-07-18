<?php
 

function vd( $var ) { 
	if(APPLICATION_ENV == 'development'){
    	$loc 		 = whereCalled();
    	$label 		 = "Dump: $loc"; 
    	$result      = Zend_Debug::dump($var, $label);
    	die();
	}
}

function pd( ) { 
	if(APPLICATION_ENV == 'development'){
		 
    	$loc 		 = whereCalled();
    	$label 		 = "Dump: $loc \n";
    	echo $label;
    	
    	foreach(func_get_args() as $var){
	    	echo '<pre>';
	    			print_r($var);
	    	echo '</pre>';
    	}
    	die();
	}
}

function whereCalled( $level = 1 ) {
    $trace  = debug_backtrace();
    $file   = $trace[$level]['file'];
    $line   = $trace[$level]['line'];
    $object = isset($trace[$level]['object']) ? $trace[$level]['object'] : null;
    if (is_object($object)) { 
    	$object = get_class($object); 
    }

    return "Where called: line $line of $object \n(in $file)";
}