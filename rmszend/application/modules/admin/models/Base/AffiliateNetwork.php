<?php
// Connection Component Binding
Doctrine_Manager::getInstance()->bindComponent('Admin_Model_AffiliateNetwork', 'admin');

/**
 * Admin_Model_Base_AffiliateNetwork
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property string $title
 * @property string $description
 * @property string $url
 * @property string $category_url
 * @property string $merchant_url
 * @property string $note
 * @property Admin_Model_AffiliateRetailer $AffiliateRetailer
 * @property Admin_Model_AffiliateProductCategory $AffiliateProductCategory
 * @property Admin_Model_AffiliateFeed $AffiliateFeed
 * @property Admin_Model_AffiliateProduct $AffiliateProduct
 * 
 * @package    ##PACKAGE##
 * @subpackage RhemaSys
 * @author     Pele Odiase <info@rhema-webdesign.com>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class Admin_Model_Base_AffiliateNetwork extends Rhema_Model_Abstract
{
    public function setTableDefinition()
    {
        $this->setTableName('affiliate_network');
        $this->hasColumn('title', 'string', 150, array(
             'type' => 'string',
             'notnull' => true,
             'length' => '150',
             ));
        $this->hasColumn('description', 'string', 512, array(
             'type' => 'string',
             'length' => '512',
             ));
        $this->hasColumn('url', 'string', 150, array(
             'type' => 'string',
             'length' => '150',
             ));
        $this->hasColumn('category_url', 'string', null, array(
             'type' => 'string',
             ));
        $this->hasColumn('merchant_url', 'string', null, array(
             'type' => 'string',
             ));
        $this->hasColumn('note', 'string', null, array(
             'type' => 'string',
             ));

        $this->option('type', 'INNODB');
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Admin_Model_AffiliateRetailer as AffiliateRetailer', array(
             'local' => 'id',
             'foreign' => 'affiliate_network_id'));

        $this->hasOne('Admin_Model_AffiliateProductCategory as AffiliateProductCategory', array(
             'local' => 'id',
             'foreign' => 'affiliate_network_id'));

        $this->hasOne('Admin_Model_AffiliateFeed as AffiliateFeed', array(
             'local' => 'id',
             'foreign' => 'affiliate_network_id'));

        $this->hasOne('Admin_Model_AffiliateProduct as AffiliateProduct', array(
             'local' => 'id',
             'foreign' => 'affiliate_network_id'));

        $timestampable0 = new Doctrine_Template_Timestampable();
        $rhema_model_template_subsite0 = new Rhema_Model_Template_Subsite();
        $softdelete0 = new Doctrine_Template_SoftDelete();
        $blameable0 = new Doctrine_Template_Blameable();
        $this->actAs($timestampable0);
        $this->actAs($rhema_model_template_subsite0);
        $this->actAs($softdelete0);
        $this->actAs($blameable0);
    }
}