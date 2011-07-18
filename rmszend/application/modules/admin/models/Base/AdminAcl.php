<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Admin_Model_AdminAcl', 'admin');

/**
 * Admin_Model_Base_AdminAcl
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property string $title
 * @property string $scope
 * @property string $resource
 * @property string $privilege
 * @property integer $allow
 * @property string $role
 * @property integer $root_id
 * 
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webdesign.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class Admin_Model_Base_AdminAcl extends Rhema_Model_Abstract
{
    public function setTableDefinition()
    {
        $this->setTableName('admin_acl');
        $this->hasColumn('title', 'string', 45, array(
             'type' => 'string',
             'length' => '45',
             ));
        $this->hasColumn('scope', 'string', 45, array(
             'type' => 'string',
             'length' => '45',
             ));
        $this->hasColumn('resource', 'string', 45, array(
             'type' => 'string',
             'length' => '45',
             ));
        $this->hasColumn('privilege', 'string', 45, array(
             'type' => 'string',
             'length' => '45',
             ));
        $this->hasColumn('allow', 'integer', 1, array(
             'type' => 'integer',
             'length' => '1',
             ));
        $this->hasColumn('role', 'string', 45, array(
             'type' => 'string',
             'length' => '45',
             ));
        $this->hasColumn('root_id', 'integer', 4, array(
             'type' => 'integer',
             'length' => '4',
             ));

        $this->option('type', 'INNODB');
    }

    public function setUp()
    {
        parent::setUp();
        $timestampable0 = new Doctrine_Template_Timestampable();
        $blameable0 = new Doctrine_Template_Blameable();
        $rhema_model_template_subsite0 = new Rhema_Model_Template_Subsite();
        $this->actAs($timestampable0);
        $this->actAs($blameable0);
        $this->actAs($rhema_model_template_subsite0);
    }
}