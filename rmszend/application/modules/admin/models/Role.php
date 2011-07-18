<?php

/**
 * Admin_Model_Role
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webesign.com>
 * @version    SVN: $Id: Builder.php 6716 2009-11-12 19:26:28Z jwage $
 */
class Admin_Model_Role extends Admin_Model_Base_Role{

	const ROLE_SUPER  = 'super';
	const ROLE_MEMBER = 'member';
	const ROLE_GUEST  = 'guest';
	
	public static function getRoles(){
		$model  = __CLASS__ ;
		$daoFilter = new Rhema_Dao_Filter();
		$daoFilter->setModel($model)
				  ->addOrderBy('sequence'); 
		$result =  Rhema_Model_Service::createQuery($daoFilter)->execute();
		
		if(empty($result)){		
			if( Rhema_Util::isOnline()){ 
				$result = self::getDefaultTableDetails($model); 
			}else{
				$result = array(
					array('title' => 'quest'),
					array('title' => 'super')
				);
			}
		}
		
		return $result;
	}
}