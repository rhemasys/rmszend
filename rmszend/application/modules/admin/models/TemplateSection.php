<?php

/**
 * Admin_Model_TemplateSection
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webesign.com>
 * @version    SVN: $Id: Builder.php 6716 2009-11-12 19:26:28Z jwage $
 */
class Admin_Model_TemplateSection extends Admin_Model_Base_TemplateSection
{
    public static function getTemplateSections($templateId, $mode = false, $pageId = '', $activeOnly = false){ 
    	$operator = (is_array($templateId)) ? Rhema_Dao_Filter::OP_IN : Rhema_Dao_Filter::OP_EQ;
    	$filter = new Rhema_Dao_Filter();
    	$filter->setModel(__CLASS__)
    		   ->addJoin('AdminSection', Rhema_Dao_Filter::INNER_JOIN)
    		   ->addOrderBy('sequence') 
    		   //->setDebug()
    		   ->addCondition('template_id', $templateId, $operator);
    	if(false !== $mode){
    		$filter->setHydrationMode($mode);
    	}    

    	if($activeOnly){
    		$filter->addCondition('deleted_at', null, Rhema_Dao_Filter::OP_IS_NULL);
    	}
    	$query = Rhema_Model_Service::createQuery($filter);
    	$result = $query->execute(); 
//pd($result);
    	return $result;
    }
 

	public static function updateTemplateSection($templateId, $sections = array()){ 
 		if($templateId){ 
			$modelFilter  = new Rhema_Filter_FormatModelName(); 
			//$record		  = Doctrine_Core::getTable($table)->find($templateId); 
			$toAdd 		  = array_flip($sections);
			$count 		  = 0;

			$daoFilter    = new Rhema_Dao_Filter();
			$daoFilter->setBypassSoftDelete(true)
					  ->setModel(__CLASS__)
					 // ->setDebug(true)
					  ->addCondition('template_id', $templateId)
					  ->setHydrationMode(Doctrine_Core::HYDRATE_RECORD);
					 
			$sections = Rhema_Model_Service::createQuery($daoFilter)->execute();
			//pd($sections);
			foreach($sections as $existField){
				$fId = $existField['admin_section_id'];
				if(isset($toAdd[$fId])){
					$existField['deleted_at'] = null;
					$existField['sequence']	  = $toAdd[$fId];
				}else{
					$existField['deleted_at'] = date('Y-m-d H:i:s', time());
				}
				unset($toAdd[$fId]);
				$count++;
			}
			
			$sections->save();
			$sections->free(true);

			if(count($toAdd)){
			 	foreach($toAdd as $sectionId => $sequence){
			 		$obj = new Admin_Model_TemplateSection();
			 		$obj->admin_section_id  = $sectionId;
			 		$obj->sequence          = $sequence;
			 		$obj->template_id = $templateId;
			 		$obj->save();
			 		$obj->free();
			 	}
			}
 
			$tags = array(
				$modelFilter->filter('admin_section'),
				$modelFilter->filter('template')
			);
			Rhema_Cache::clearCacheOnUpdate(__CLASS__, $tags); 
			
			$numAdd = count($toAdd) ;
			$str    = Rhema_Util_String::pluralise('record', $count);
			$str2   = Rhema_Util_String::pluralise('record', $numAdd);
			
			$message = "$count $str  updated, " . $numAdd . " $str2 created.";
			$type    = Rhema_Dto_UserMessageDto::TYPE_SUCCESS;
 		}else{
 			$message = 'Template not found';
 			$type    = Rhema_Dto_UserMessageDto::TYPE_WARNING;
 		}

 		$return['message'] = $message ;
 		$return['type']    = $type ;
 		
 		return $return ;
	}
 
    public static function removeNull($val){
    	return ($val != 'null');
    }
	public static function getDetails($template_id, $page_id){
		$model = __CLASS__ ;
		$query = Doctrine_Query::create()
					->select('m.*,s.*')
					->from("$model m")
					->innerJoin('m.AdminSection s')
					->leftJoin('m.Templates t')
					->where('t.page_id =?',$page_id)
					->andWhere('t.template_id =?',$template_id)
					//->useResultCache(true)
					->setHydrationMode(Doctrine_Core::HYDRATE_ARRAY);
		$result = $query->execute();
		//;

		return $result;
	}

	/**
	 * Save section sequence for the selected template
	 *
	 */
	public static function saveSectionOrder($template_id, $sectionAdd = array()){

 		$tempSxns     = self::getTemplateSections($template_id);
 		foreach($tempSxns as $ts){
 			$sId   = $ts['admin_section_id'];
 			if(isset($sectionAdd[$sId])){
 				$ts['sequence'] = intVal($sectionAdd[$sId]);
 			}
 		}

		$tempSxns->save();
	}
}