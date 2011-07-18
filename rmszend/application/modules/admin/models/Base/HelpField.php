<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Admin_Model_HelpField', 'admin');

/**
 * Admin_Model_Base_HelpField
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property string $title
 * @property string $label
 * @property string $description
 * @property integer $is_mandatory
 * @property integer $is_searchable
 * @property Doctrine_Collection $Layout
 * @property Doctrine_Collection $Templates
 * @property Doctrine_Collection $TemplateFields
 * 
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webdesign.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class Admin_Model_Base_HelpField extends Rhema_Model_Abstract
{
    public function setTableDefinition()
    {
        $this->setTableName('help_field');
        $this->hasColumn('title', 'string', 145, array(
             'type' => 'string',
             'notnull' => true,
             'length' => '145',
             ));
        $this->hasColumn('label', 'string', 145, array(
             'type' => 'string',
             'notnull' => true,
             'length' => '145',
             ));
        $this->hasColumn('description', 'string', 255, array(
             'type' => 'string',
             'length' => '255',
             ));
        $this->hasColumn('is_mandatory', 'integer', 1, array(
             'type' => 'integer',
             'default' => 1,
             'length' => '1',
             ));
        $this->hasColumn('is_searchable', 'integer', 1, array(
             'type' => 'integer',
             'default' => 0,
             'length' => '1',
             ));

        $this->option('type', 'INNODB');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('Admin_Model_HelpTemplateLayout as Layout', array(
             'local' => 'id',
             'foreign' => 'help_field_id'));

        $this->hasMany('Admin_Model_HelpTemplate as Templates', array(
             'refClass' => 'Admin_Model_HelpTemplateField',
             'local' => 'help_field_id',
             'foreign' => 'help_template_id'));

        $this->hasMany('Admin_Model_HelpTemplateField as TemplateFields', array(
             'local' => 'id',
             'foreign' => 'help_field_id'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $this->actAs($timestampable0);
    }
}