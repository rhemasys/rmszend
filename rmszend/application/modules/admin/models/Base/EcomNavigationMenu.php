<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Admin_Model_EcomNavigationMenu', 'admin');

/**
 * Admin_Model_Base_EcomNavigationMenu
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $ecom_category_id
 * @property Admin_Model_EcomCategory $EcomCategory
 * 
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webdesign.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class Admin_Model_Base_EcomNavigationMenu extends Admin_Model_AdminMenu
{
    public function setTableDefinition()
    {
        parent::setTableDefinition();
        $this->setTableName('ecom_navigation_menu');
        $this->hasColumn('ecom_category_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));

        $this->option('type', 'INNODB');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Admin_Model_EcomCategory as EcomCategory', array(
             'local' => 'ecom_category_id',
             'foreign' => 'id'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $nestedset0 = new Doctrine_Template_NestedSet(array(
             'hasManyRoots' => true,
             'rootColumnName' => 'root_id',
             ));
        $rhema_model_template_subsite0 = new Rhema_Model_Template_Subsite();
        $this->actAs($timestampable0);
        $this->actAs($nestedset0);
        $this->actAs($rhema_model_template_subsite0);
    }
}