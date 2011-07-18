<?php

/**
 * Help_Model_HelpBoilerPlate
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webesign.com>
 * @version    SVN: $Id: Builder.php 6716 2009-11-12 19:26:28Z jwage $
 */
class Help_Model_HelpBoilerPlate extends Help_Model_Base_HelpBoilerPlate
{
	public static function getBoilerPlates($mode = Doctrine_Core::HYDRATE_ARRAY){
		$table = (__CLASS__) ;
		$query    = Doctrine_Query::create()->from("$table t INDEXBY t.id"); 
		if($mode){
			$query->setHydrationMode($mode);
		}								 
		return $query->execute();
	}
}