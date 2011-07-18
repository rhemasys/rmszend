<?php

/**
 * Admin_Model_News
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webesign.com>
 * @version    SVN: $Id: Builder.php 6716 2009-11-12 19:26:28Z jwage $
 */
class Admin_Model_News extends Admin_Model_Base_News
{
	public static function getLatestNews($number = 5){
		$model = __CLASS__ ;
		$now   =  new Zend_Date(time(), Zend_Date::ISO_8601);
		$query = Doctrine_Query::create()	
					->from("$model e")
					->limit($number)
					->setHydrationMode(Doctrine_Core::HYDRATE_ARRAY)
					->orderBy('e.start_at')
					//->where('e.end_at <= ?', $now)
					->addWhere('e.is_active =?', 1);
		return $query->execute();			
	}
}