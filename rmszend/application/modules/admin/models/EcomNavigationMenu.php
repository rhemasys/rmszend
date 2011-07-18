<?php

/**
 * Admin_Model_EcomNavigationMenu
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webesign.com>
 * @version    SVN: $Id: Builder.php 6716 2009-11-12 19:26:28Z jwage $
 */
class Admin_Model_EcomNavigationMenu extends Admin_Model_Base_EcomNavigationMenu{

	public function getSubCategory($slug){
		$model    = __CLASS__ ;
		$map      = CATEGORY_MAP; 
		$children = array();
		
		$query = Doctrine_Query::create()
					->select('pc.id,c.title')
					->from("$model pc")
					->leftJoin('pc.EcomCategory c')
					->where("c.$map =?", "$slug");
		$res	= $query->execute();
		
		$category = $res[0];
		
		if($category){
			$node     = $category->getNode();
			$children = $node->getChildren();
		}

		return $children;
	}
	
	public static function getSubCategoryLayout($value, $page = 1, $url = '/'){
		
		$model 		= __CLASS__; 
		$pageChunk	= 5;
		$page       = $page ? $page : 1;
		$limit      = 20;	
		$key        = CATEGORY_MAP;
			
		$query 		= Doctrine_Query::create()
					->select('pc.id,c.title')
					->from("$model pc")
					->leftJoin('pc.EcomCategory c')
					->where("c.$key =?", "$value"); 
					
					
		$pagerLayout = new Rhema_Model_PagerLayout(
		      new Doctrine_Pager($query, $page, $limit), 
		      new Doctrine_Pager_Range_Sliding(array('chunk' => $pageChunk)),			            				      
		      $url
		);
		
		$pagerLayout->setTemplate(self::$pageTemplate);
		$pagerLayout->setSelectedTemplate(self::$activePageTemplate);
		
			
		return $pagerLayout;
	}	
		public static function getLeafRecords(){
			$model = __CLASS__ ;
			$query = Doctrine_Query::create()
						->select('c.title,t.title,t.ecom_category_id')
						->from("$model t INDEXBY t.id")
						->orderBy('t.title')
						->where('(t.rgt - t.lft) = 1')
						->leftJoin('t.EcomCategory c')
						->setHydrationMode(Doctrine_Core::HYDRATE_ARRAY); 
			return $query->execute(); 
		}
}