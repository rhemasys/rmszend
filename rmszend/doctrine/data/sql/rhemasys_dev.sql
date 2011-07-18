-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 25, 2010 at 10:31 PM
-- Server version: 5.1.50
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rhemasys_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT 'home',
  `line1` varchar(45) DEFAULT NULL,
  `line2` varchar(45) DEFAULT NULL,
  `line3` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `country` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `address_book`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_acl`
--

CREATE TABLE IF NOT EXISTS `admin_acl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `scope` varchar(45) DEFAULT NULL,
  `resource` varchar(45) DEFAULT NULL,
  `privilege` varchar(45) DEFAULT NULL,
  `allow` tinyint(4) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `root_id` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `admin_acl`
--

INSERT INTO `admin_acl` (`id`, `title`, `scope`, `resource`, `privilege`, `allow`, `role`, `created_at`, `updated_at`, `created_by`, `updated_by`, `root_id`, `admin_subsite_id`) VALUES
(1, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'guest', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(2, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'guest', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(3, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'guest', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(4, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'guest', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(5, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'login', 1, 'guest', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(6, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'member', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(7, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'member', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(8, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'member', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(9, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'member', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(10, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'login', 1, 'member', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(11, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'admininstrator', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(12, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'admininstrator', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(13, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'admininstrator', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(14, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'admininstrator', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(15, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'login', 1, 'admininstrator', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(16, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'super', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(17, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'super', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(18, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'super', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(19, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'super', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(20, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'login', 1, 'super', '2010-12-23 23:40:32', '2010-12-23 23:40:32', 1, 1, 1, 8),
(21, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'what-next', 1, 'guest', '2010-12-23 23:40:53', '2010-12-23 23:40:53', 1, 1, 16, 8),
(22, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'prices-and-packages', 1, 'guest', '2010-12-23 23:40:53', '2010-12-23 23:40:53', 1, 1, 16, 8),
(23, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'book-us', 1, 'guest', '2010-12-23 23:40:53', '2010-12-23 23:40:53', 1, 1, 16, 8),
(24, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'what-next', 1, 'super', '2010-12-23 23:40:53', '2010-12-23 23:40:53', 1, 1, 16, 8),
(25, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'prices-and-packages', 1, 'super', '2010-12-23 23:40:53', '2010-12-23 23:40:53', 1, 1, 16, 8),
(26, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'book-us', 1, 'super', '2010-12-23 23:40:53', '2010-12-23 23:40:53', 1, 1, 16, 8),
(27, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'my-account', 1, 'super', '2010-12-23 23:40:53', '2010-12-23 23:40:53', 1, 1, 16, 8),
(28, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'my-account', 1, 'member', '2010-12-23 23:40:53', '2010-12-23 23:40:53', 1, 1, 16, 8),
(29, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'guest', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(30, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'guest', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(31, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'guest', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(32, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'pricing', 1, 'guest', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(33, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'guest', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(34, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'register', 1, 'guest', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(35, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'member', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(36, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'member', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(37, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'my-account', 1, 'member', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(38, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'member', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(39, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'member', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(40, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'admininstrator', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(41, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'admininstrator', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(42, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'my-account', 1, 'admininstrator', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(43, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'admininstrator', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(44, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'admininstrator', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(45, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'super', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(46, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'super', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(47, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'my-account', 1, 'super', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(48, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'super', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(49, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'pricing', 1, 'super', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(50, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'super', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8),
(51, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'register', 1, 'super', '2010-12-23 23:48:39', '2010-12-23 23:48:39', 1, 1, 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `admin_category`
--

CREATE TABLE IF NOT EXISTS `admin_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `admin_category`
--

INSERT INTO `admin_category` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Headers', 'Template headers category', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(2, 'Main Body', 'Template main body', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(3, 'Footer', 'Template footers', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(4, 'General', '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(5, 'Menus', '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(6, 'Admin', 'Admin related items', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(7, 'Content', '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(8, 'Design', '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(9, 'Templates', '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(10, 'Indexes', '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(11, 'User Data', 'User related data', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(12, 'Ecommerce', '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(13, 'Configuration', '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(14, 'Blog Items', 'Items belonging to the blog module or related', '2010-11-29 20:45:10', '2010-11-29 20:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_content_type`
--

CREATE TABLE IF NOT EXISTS `admin_content_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `code` varchar(45) NOT NULL,
  `admin_table_id` int(11) DEFAULT NULL,
  `is_table` tinyint(4) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `code` (`code`),
  KEY `admin_table_id_idx` (`admin_table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin_content_type`
--

INSERT INTO `admin_content_type` (`id`, `title`, `description`, `code`, `admin_table_id`, `is_table`, `sequence`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Widgets', '', 'AdminElement', 9, 0, 2, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(2, 'User Defined Contents', '', 'Component', 23, 0, 1, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(3, 'BreadCrumbs', '', 'MenuCrumb', 25, 0, 4, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(4, 'Site Menus', '', 'Menu', 25, 0, 3, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(5, 'Product Webtree', '', 'EcomNavigationMenu', 49, 0, 5, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(6, 'Breadcrumb - Products', '', 'EcomNavigationMenuCrumb', 49, 0, 6, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(7, 'Boiler Plates', '', 'BoilerPlate', 37, 0, 7, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(8, 'Web Forms', '', 'WebForm', 64, 0, 8, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_control`
--

CREATE TABLE IF NOT EXISTS `admin_control` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `licence_key` varchar(45) DEFAULT NULL,
  `num_site` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_control`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_county`
--

CREATE TABLE IF NOT EXISTS `admin_county` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `admin_state_id` int(11) DEFAULT NULL,
  `ecom_tax_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_state_id_idx` (`admin_state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_county`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_currency`
--

CREATE TABLE IF NOT EXISTS `admin_currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `code` varchar(8) NOT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  `symbol` varchar(8) DEFAULT NULL,
  `position` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_currency`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_database`
--

CREATE TABLE IF NOT EXISTS `admin_database` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_database`
--

INSERT INTO `admin_database` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Help', 'Documentation, user manuals and help search', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(2, 'RhemaSys', 'Content managemenet and e-commerce system tables', '2010-11-29 20:45:10', '2010-11-29 20:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_dictionary`
--

CREATE TABLE IF NOT EXISTS `admin_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `label` varchar(45) NOT NULL,
  `row` int(11) DEFAULT NULL,
  `col` int(11) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `note` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `admin_dictionary`
--

INSERT INTO `admin_dictionary` (`id`, `title`, `description`, `label`, `row`, `col`, `sequence`, `note`, `created_at`, `updated_at`) VALUES
(1, 'id', '', 'ID', 1, 1, 1, '', '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(2, 'title', '', 'Title', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(3, 'description', '', 'Description', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(4, 'line1', '', 'Address Line 1', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(5, 'line2', '', 'Address Line 2', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(6, 'city', '', 'City', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(7, 'region', '', 'Region', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(8, 'post_code', '', 'Post Code', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(9, 'admin_country_id', '', 'Country', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(10, 'created_at', '', 'Created', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(11, 'updated_at', '', 'Updated', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(12, 'licence_key', '', 'Licence Key', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(13, 'num_site', '', 'Num Site', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(14, 'admin_subsite_id', '', 'Website', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(15, 'code', '', 'Product Code', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(16, 'admin_currency_id', '', 'Currency', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(17, 'rate', '', 'Rate', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(18, 'symbol', '', 'Symbol', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(19, 'position', '', 'Position', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(20, 'label', '', 'Label', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(21, 'filename', '', 'Filename', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(22, 'admin_category_id', '', 'Category', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(23, 'is_hidden', '', 'Hide', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(24, 'is_deleted', '', 'Deleted', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(25, 'admin_table_id', '', 'Table', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(26, 'module', '', 'Module', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(27, 'controller', '', 'Controller', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(28, 'action', '', 'Action', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(29, 'image_file', '', 'Image', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(30, 'root_id', '', 'Root ID', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(31, 'lft', '', 'Lft', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(32, 'rgt', '', 'Rgt', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(33, 'admin_menu_id', '', 'Menu', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(34, 'is_active', '', 'Active', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(35, 'deleted_at', '', 'Deleted', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(36, 'cssid', '', 'Cssid', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(37, 'cssclass', '', 'Cssclass', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(38, 'note', '', 'Note', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(39, 'keyword', '', 'Keyword', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(40, 'licence', '', 'Licence', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(41, 'contact_email', '', 'Contact Email', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(42, 'sales_email', '', 'Sales Email', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(43, 'telephone', '', 'Telephone', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(44, 'fax', '', 'Fax', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(45, 'domain', '', 'Domain', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(46, 'root_dir', '', 'Root Directory', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(47, 'user_id', '', 'User', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(48, 'admin_template_id', '', 'Template', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(49, 'renewal_at', '', 'Renewal At', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(50, 'colour_scheme', '', 'Colour Scheme', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(51, 'created_by', '', 'Author', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(52, 'updated_by', '', 'Editor', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(53, 'name', '', 'Name', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(54, 'is_admin', '', 'Admin', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(55, 'admin_section_id', '', 'Section', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(56, 'sequence', '', 'Sequence', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(57, 'content', '', 'Content', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(58, 'category_id', '', 'Category', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(59, 'version', '', 'Version', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(60, 'page_id', '', 'Page ID', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(61, 'start_at', '', 'Start Date', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(62, 'end_at', '', 'Expiry Date', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(63, 'is_cached', '', 'Use Cache', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(64, 'is_secure', '', 'Secure', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(65, 'slug', '', 'Slug', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(66, 'item', '', 'Page Item', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(67, 'content_type', '', 'Content Type', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(68, 'section_seq', '', 'Sequence', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(69, 'item_seq', '', 'Sequence', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(70, 'firstname', '', 'Firstname', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(71, 'lastname', '', 'Surname', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(72, 'username', '', 'Username', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(73, 'dob_at', '', 'D.O.B', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(74, 'nickname', '', 'Nick Name', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(75, 'gender', '', 'Gender', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(76, 'password', '', 'Password', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(77, 'email', '', 'Email', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(78, 'company', '', 'Company', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(79, 'website', '', 'Website', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(80, 'is_blocked', '', 'Blocked', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(81, 'is_online', '', 'Online', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(82, 'visits', '', 'Visits', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(83, 'admin_salutation_id', '', 'Title', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(84, 'usergroup_id', '', 'User Group', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(85, 'admin_group_id', '', 'Group', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(86, 'address_book_id', 'Contact address', 'Address Book', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(87, 'header_id', 'Header template', 'Header', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(88, 'footer_id', 'Footer template', 'Footer', 1, 1, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(89, 'is_visible', '', 'Visible', 1, 0, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11'),
(90, 'row', '', 'Row', 1, 0, 1, '', '2010-11-29 20:45:11', '2010-11-29 20:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_element`
--

CREATE TABLE IF NOT EXISTS `admin_element` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `widget` varchar(45) NOT NULL,
  `admin_category_id` int(11) NOT NULL DEFAULT '1',
  `admin_licence_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_category_id_idx` (`admin_category_id`),
  KEY `admin_licence_id_idx` (`admin_licence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `admin_element`
--

INSERT INTO `admin_element` (`id`, `title`, `description`, `widget`, `admin_category_id`, `admin_licence_id`, `created_at`, `updated_at`) VALUES
(1, 'Mini Basket', 'Interface display a summary ot the items in t', 'Cart~summary', 2, 0, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(2, 'Main Menu', '', 'Menu~main-menu', 5, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(3, 'Breadcrumb', '', 'Menu~breadcrumb', 4, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(4, 'Login', 'Login form', 'Form~login', 4, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(5, 'Latest News', 'Latest news and articles', 'Index~latestnews', 7, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(6, 'Layout Tools', 'Layout management tools visible when logged i', 'Layout~tool', 6, 0, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(7, 'Latest Blog Posts', 'Latest Blog Posts', 'Post~latestpost', 14, 3, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(8, 'Category Search', '', 'Search~index', 4, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(9, 'Product Breadcrumb', 'Bread crumb showing web tree trail', 'Menu~productcrumb', 4, 0, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(10, 'Shopping Cart', '', 'Cart~basket', 12, 0, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(11, 'Product Detail', '', 'Search~product', 12, 4, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(12, 'Branch Search', '', 'Search~branch', 12, 4, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(13, 'Access Denied', '', 'Error~deny', 4, 0, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(14, 'Feature Banner', 'Display featured items in a banner rotator as', 'Index~banner', 1, 0, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(15, 'Featured Items', 'Display featured products or items. Informati', 'Index~feature', 9, 0, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(16, 'Social Media', 'Social Media Icons', 'Index~media', 7, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(17, 'Search', '', 'Index~search', 7, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(18, 'Blog Post Display', '', 'Post~detail', 14, 3, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(19, 'Post Archives', 'Achives of blog posts', 'Post~archive', 14, 3, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(20, 'Post Category', 'Blog post category', 'Post~category', 14, 3, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(21, 'Registration Form', '', 'Form~register', 7, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE IF NOT EXISTS `admin_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text,
  `is_active` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_licence`
--

CREATE TABLE IF NOT EXISTS `admin_licence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `licence_key` varchar(45) NOT NULL DEFAULT 'FREE',
  `price` double DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `licence_key` (`licence_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin_licence`
--

INSERT INTO `admin_licence` (`id`, `title`, `description`, `licence_key`, `price`, `created_at`, `updated_at`) VALUES
(1, 'CMS', '', 'FREE', 0, '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(2, 'Admin', '', 'FREE2', 0, '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(3, 'Blog', '', 'Blog', 12.5, '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(4, 'Email Marketing', '', 'MAILER', 85, '2010-11-29 20:45:10', '2010-11-29 20:45:10'),
(5, 'Ecommerce', '', 'SHOP', 0, '2010-11-29 20:45:10', '2010-11-29 20:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `module` varchar(45) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `sequence` int(11) DEFAULT '0',
  `action` varchar(45) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `is_label` tinyint(4) DEFAULT '0',
  `is_visible` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `root_id` bigint(20) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `title`, `description`, `label`, `module`, `controller`, `sequence`, `action`, `image_file`, `is_label`, `is_visible`, `created_at`, `updated_at`, `root_id`, `lft`, `rgt`, `level`) VALUES
(1, 'Admin', 'Admin menus', 'Admin Menu', 'admin', 'index', 0, 'index', 'admin.png', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 1, 32, 0),
(2, 'Cms', 'Cms menus', 'Content Management', 'cms', 'index', 0, 'index', 'cms.png', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 2, 1, 24, 0),
(3, 'Blog', 'Blog menus', 'Blog Menu', 'blog', 'index', 0, 'index', 'blog.png', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 3, 1, 14, 0),
(4, 'eCommerce', 'eCom menus', 'eCommerce', 'ecom', 'index', 0, 'index', 'ecommerce.png', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 4, 1, 22, 0),
(5, 'Email', 'Email menus', 'Email Menu', 'email', 'index', 0, 'index', 'email.png', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 5, 1, 2, 0),
(6, 'Manage', '', 'Manage', 'admin', 'index', 1, '', '/golive/userfiles/NIKE-10.jpg', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 14, 23, 1),
(7, 'System', '', 'System', 'admin', 'index', 0, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 24, 29, 1),
(8, 'Pages', '', 'Pages', 'admin', 'index', 0, 'page', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 3, 4, 2),
(9, 'Design', '', 'Design', 'admin', 'index', 1, 'page', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 2, 13, 1),
(10, 'Tables', '', 'Tables', 'admin', 'grid', 3, 'table', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 17, 18, 2),
(11, 'Menus', '', 'Menus', 'admin', 'index', 1, 'siteaccess', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 5, 10, 2),
(12, 'Category', '', 'Category', 'blog', 'index', 6, 'category', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 3, 3, 4, 2),
(13, 'Menus', '', 'Menus', 'cms', 'menu', 0, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 2, 3, 8, 2),
(14, 'Pages', '', 'Pages', 'cms', 'design', 0, 'page', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 2, 9, 10, 2),
(15, 'Archives', '', 'Archives', 'blog', 'index', 1, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 3, 11, 12, 2),
(16, 'Help', '', 'Help', 'cms', 'admin', 0, 'help', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 2, 16, 19, 1),
(17, 'Help', 'help menus', 'Help', 'help', 'index', 0, 'index', 'help.png', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 17, 1, 12, 0),
(18, 'Design', 'Search for help information', 'Design', 'help', 'search', 0, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 17, 2, 5, 1),
(19, 'Help', 'Knowledge center, help and documentation home', 'Help', 'admin', 'help', 0, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 30, 31, 1),
(20, 'Search', 'Perform help search', 'Search', 'admin', 'help', 0, 'search', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 17, 6, 11, 1),
(21, 'Users', '', 'Users', '', '', 0, '', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 19, 22, 2),
(22, 'Licencing', '', 'Licencing', 'admin', 'index', 1, 'registry', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 25, 26, 2),
(23, 'Tools', 'Front end layout design tools', 'Tools', 'admin', 'layout', 1, 'tool', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 11, 12, 2),
(24, 'Database', 'View existing databases, schema and informati', 'Database', 'admin', 'database', 0, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 15, 16, 2),
(25, 'Layout', '', 'Layout', 'help', 'design', 0, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 17, 3, 4, 2),
(26, 'Keyword', '', 'Keyword', 'help', 'search', 0, 'keyword', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 17, 7, 8, 2),
(27, 'Help Types', '', 'Help Types', 'help', 'search', 0, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 17, 9, 10, 2),
(28, 'Layout', '', 'Layout', 'admin', 'index', 3, 'menu', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 6, 7, 3),
(29, 'Layout', '', 'Layout', 'cms', 'menu', 1, 'frontend', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 2, 4, 5, 3),
(30, 'Trees', '', 'Trees', 'ecom', 'index', 1, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 4, 5, 10, 2),
(31, 'Manage', '', 'Manage', 'ecom', 'stock', 1, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 4, 18, 19, 1),
(32, 'Products', '', 'Products', 'ecom', 'stock', 1, 'product', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 4, 3, 4, 2),
(33, 'Category', '', 'Category', 'ecom', 'stock', 2, 'category', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 4, 11, 12, 2),
(34, 'Settings', '', 'Settings', 'ecom', 'index', 1, 'setting', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 4, 20, 21, 1),
(35, 'Design', '', 'Design', 'ecom', 'index', 1, 'index', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 4, 14, 17, 1),
(36, 'Attributes', '', 'Attributes', 'ecom', 'index', 2, 'template', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 4, 15, 16, 2),
(37, 'Access Control', '', 'Access Control', 'admin', 'index', 2, 'adminaccess', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 1, 8, 9, 3),
(38, 'Access Control', '', 'Access Control', 'cms', 'menu', 1, 'siteaccess', '', 0, 1, '2010-11-29 20:45:11', '2010-11-29 20:45:11', 2, 6, 7, 3),
(39, 'Access Control', '', 'Access Control', 'ecom', 'menu', 2, 'ecomaccess', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 4, 8, 9, 3),
(40, 'Design', '', 'Design', '', '', 0, '', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 2, 2, 15, 1),
(41, 'Catalog', '', 'Catalog', '', '', 0, '', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 4, 2, 13, 1),
(42, 'Posts', '', 'Posts', 'blog', 'index', 0, 'addpost', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 3, 5, 6, 2),
(43, 'User Roles', '', 'User Roles', 'cms', 'admin', 1, 'setting', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 1, 20, 21, 3),
(44, 'Layout', '', 'Layout', 'ecom', 'menu', 1, 'tree', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 4, 6, 7, 3),
(45, 'System', '', 'System', '', '', 0, '', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 2, 20, 23, 1),
(46, 'Settings', '', 'Settings', 'cms', 'admin', 1, 'setting', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 2, 21, 22, 2),
(47, 'Setting Definition', '', 'Setting Definition', 'admin', 'index', 5, 'setting', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 1, 27, 28, 2),
(48, 'Featured Items', '', 'Featured Items', 'cms', 'design', 2, 'feature', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 2, 11, 12, 2),
(49, 'Web Forms', '', 'Web Forms', 'cms', 'design', 1, 'form', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 2, 13, 14, 2),
(50, 'Design', '', 'Design', '', '', 0, '', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 3, 2, 9, 1),
(51, 'Manage', '', 'Manage', '', '', 0, '', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 3, 10, 13, 1),
(52, 'Comments', '', 'Comments', 'blog', 'index', 1, 'comment', '', 0, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 3, 7, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_module`
--

CREATE TABLE IF NOT EXISTS `admin_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `module` varchar(45) NOT NULL,
  `thumb` varchar(45) NOT NULL,
  `image_file` varchar(45) NOT NULL,
  `admin_menu_id` int(11) NOT NULL,
  `admin_licence_id` int(11) NOT NULL,
  `sequence` int(11) DEFAULT '0',
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_menu_id_idx` (`admin_menu_id`),
  KEY `admin_licence_id_idx` (`admin_licence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_module`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_section`
--

CREATE TABLE IF NOT EXISTS `admin_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `cssid` varchar(45) DEFAULT NULL,
  `cssclass` varchar(45) DEFAULT NULL,
  `note` text,
  `admin_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_category_id_idx` (`admin_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `admin_section`
--

INSERT INTO `admin_section` (`id`, `title`, `description`, `cssid`, `cssclass`, `note`, `admin_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Banner', 'Website banner usually located in the header ', 'banner', 'sxnHeadBanner', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(2, 'Top Bar', 'Navigation menus located at the very top of t', 'sxnHeaderTopBar', '', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(3, 'SearchBar', 'Search input field and button', 'search-bar', 'sxnSiteSearch', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(4, 'Main Menu', 'Main navigation menus', 'main-menu', 'divMainMenu', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(5, 'First of 3 sections', '', 'sxn3a', 'sxnMainFirstThird', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(6, 'Second of 3 sections', '', 'sxn3b', 'sxnMainMiddleThird', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(7, 'Third of 3 sections', '', 'sxn3c', 'sxnMainLastThird', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(8, 'Large Left ', '', 'large-left', 'sxnMainLeftLarge', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(9, 'Small Right', '', 'small-right', 'sxnMainRightSmall', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(10, 'Header - Large Left', '', 'header-left-large', 'sxnHeadLeftLarge', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(11, 'Header - Small Right', '', 'header-right-small', 'sxnHeadRightSmall', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(12, 'Seperator', '', 'seperator', 'seperator', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(13, 'Blog Main Section', '', 'blog-main', 'sxnBlogMain', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(14, 'Blog - First Right', '', 'blog-right-first', 'sxnBlogRightFirst', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(15, 'Blog Right Last', '', 'blog-right-last', 'sxnBlogRightLast', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(16, 'Top', '', 'main-top', 'sxnMainTop', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(17, 'Main Left', '', 'main-left', 'sxnMainLeftHalf', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(18, 'Main Right', '', 'main-right', 'sxnMainRightHalf', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(19, 'Main Bottom', '', 'main-bottom', 'sxnMainBottom', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(20, 'Small Left', '', 'small-left', 'sxnMainLeftSmall', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(21, 'Large Right', '', 'large-right', 'sxnMainRightLarge', '', 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(22, 'Top Navigation', 'Top Navigation Menu', 'top-navigation', 'divTopMenu', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(23, 'Bottom Navigation', '', 'bottom-nav', 'divBottomNav', '', 3, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(24, 'Site Logo', '', 'site-logo', 'sxnLogo', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(25, 'Span 1', 'Full width ', '', 'sxnSpanOne', '', 7, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(26, 'Span 2', '', '', 'sxnSpanTwo', '', 7, '2010-11-29 20:45:12', '2010-11-29 20:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `admin_setting`
--

CREATE TABLE IF NOT EXISTS `admin_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` enum('select','text','radio','checkbox','hidden','image','submit','reset') NOT NULL DEFAULT 'text',
  `admin_table_id` int(11) DEFAULT NULL,
  `module` varchar(45) DEFAULT NULL,
  `param` varchar(45) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_table_id_idx` (`admin_table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_setting`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_state`
--

CREATE TABLE IF NOT EXISTS `admin_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `country` text,
  `ecom_tax_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_state`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_subsite_licence`
--

CREATE TABLE IF NOT EXISTS `admin_subsite_licence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_licence_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_licence_id_idx` (`admin_licence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_subsite_licence`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE IF NOT EXISTS `admin_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `is_hidden` tinyint(4) DEFAULT NULL,
  `note` text,
  `admin_category_id` int(11) NOT NULL DEFAULT '1',
  `admin_database_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `admin_category_id_idx` (`admin_category_id`),
  KEY `admin_database_id_idx` (`admin_database_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `title`, `description`, `name`, `is_admin`, `is_hidden`, `note`, `admin_category_id`, `admin_database_id`, `created_at`, `updated_at`) VALUES
(1, 'Address Book', '', 'address_book', 0, 0, '', 11, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(2, 'Data dictionary index', '', 'admin__model__admin_dictionary_index', 0, 1, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(3, 'Component version table', '', 'admin__model__component_version', 0, 1, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(4, 'Category - Admin', '', 'admin_category', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(5, 'Sites -  Control ', '', 'admin_control', 0, 1, '', 3, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(6, 'User Inquiry', '', 'inquiry', 0, 0, '', 11, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(7, 'Currency', '', 'admin_currency', 0, 0, '', 4, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(8, 'Data Dictionary', '', 'admin_dictionary', 0, 0, '', 7, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(9, 'Page Elements', '', 'admin_element', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(10, 'Admin Groups', '', 'admin_group', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(11, 'Tax Rates', '', 'ecom_tax', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(12, 'Menus - Admin', '', 'admin_menu', 0, 0, '', 5, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(13, 'Modules', '', 'admin_module', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(14, 'Site-Module Index', '', 'admin_module_subsite', 0, 1, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(15, 'Page Headers', '', 'page_header', 0, 0, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(16, 'Acl Rules', '', 'admin_acl', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(17, 'Sections', '', 'admin_section', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(18, 'Tables', '', 'admin_table', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(19, 'Page Templates', '', 'admin_template', 0, 0, '', 8, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(20, 'Template-Section Index', '', 'admin_template_section', 0, 1, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(21, 'Users - Admin', '', 'admin_user', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(22, 'Page Contents', '', 'component', 0, 0, '', 7, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(23, 'Doctrine Index ', '', 'doctrine__record__abstract', 0, 1, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(24, 'Menus - Front End', '', 'menu', 0, 0, '', 5, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(25, 'Page Layout Index', '', 'page_layout', 0, 1, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(26, 'Roles - User', '', 'role', 0, 0, '', 11, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(27, 'Salutations', '', 'salutation', 0, 0, '', 11, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(28, 'Sites -  List', '', 'admin_subsite', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(29, 'Users', '', 'user', 0, 0, '', 11, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(30, 'User-Address Index', '', 'user_address', 0, 1, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(31, 'User-Subsite Index', '', 'user_subsite', 0, 1, '', 0, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(32, 'User Groups', '', 'usergroup', 0, 0, '', 11, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(33, 'Pages', 'Web pages', 'page', 0, 0, '', 7, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(34, 'Category - User', '', 'category', 0, 0, '', 11, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(35, 'Databases', '', 'admin_database', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(36, 'Boiler Plates', '', 'boiler_plate', 0, 0, '', 7, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(37, 'Help category', '', 'category', 0, 0, '', 4, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(38, 'Help Documents', '', 'Help Documents', 0, 0, '', 7, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(39, 'Help Fields', '', 'field', 0, 0, '', 7, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(40, 'Help Templates', '', 'template', 0, 0, '', 4, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(41, 'template_boiler_plate', '', 'template_boiler_plate', 0, 1, '', 1, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(42, 'template_field', '', 'template_field', 0, 1, '', 1, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(43, 'Help Types', '', 'type', 0, 0, '', 8, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(44, 'Site Templates', '', 'template', 0, 0, '', 9, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(45, 'Payment Methods', '', 'ecom_payment_method', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(46, 'Product Category', '', 'ecom_category', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(47, 'Web Trees', 'Product navigation web trees', 'ecom_navigation_menu', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(48, 'Licence Keys', 'Licence', 'admin_licence', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(49, 'Subsite Licences', '', 'admin_subsite_licence', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(50, 'Delivery Methods', '', 'ecom_delivery_method', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(51, 'Web Settings', '', 'admin_setting', 0, 0, '', 6, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(52, 'Site Settings', 'Site settings', 'setting', 0, 0, '', 4, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(53, 'Products', '', 'ecom_product', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(54, 'Product-Category Index', '', 'ecom_product_category', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(55, 'Display Templates', 'User defined template allowing admintrators s', 'ecom_display_template', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(56, 'Category Template', 'User defined template allowing admintrators s', 'ecom_category_template', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(57, 'Display Attributes', 'Admin defined attributes for products and pro', 'ecom_attribute', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(58, 'Template Display Types', 'List of all possible attributes that can be d', 'ecom_display_type', 0, 0, '', 12, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(59, 'Page Footers', '', 'page_footer', 0, 0, '', 3, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(60, 'Featured Items', '', 'featured', 0, 0, '', 7, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(61, 'Content Types', '', 'admin_content_type', 0, 0, '', 7, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(62, 'Web Forms', 'Web forms', 'web_form', 0, 0, '', 7, 2, '2010-11-29 20:45:12', '2010-11-29 20:45:12'),
(63, 'Subjects', 'Subjects used to categories web enquiries', 'subject', 0, 0, '', 7, 2, '2010-12-22 01:09:14', '2010-12-22 01:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin__model__admin_dictionary_index`
--

CREATE TABLE IF NOT EXISTS `admin__model__admin_dictionary_index` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyword`,`field`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin__model__admin_dictionary_index`
--

INSERT INTO `admin__model__admin_dictionary_index` (`id`, `keyword`, `field`, `position`) VALUES
(1, 'id', 'label', 0),
(1, 'id', 'title', 0),
(2, 'title', 'label', 0),
(2, 'title', 'title', 0),
(3, 'description', 'label', 0),
(3, 'description', 'title', 0),
(4, '1', 'label', 2),
(4, 'address', 'label', 0),
(4, 'line', 'label', 1),
(4, 'line1', 'title', 0),
(5, '2', 'label', 2),
(5, 'address', 'label', 0),
(5, 'line', 'label', 1),
(5, 'line2', 'title', 0),
(6, 'city', 'label', 0),
(6, 'city', 'title', 0),
(7, 'region', 'label', 0),
(7, 'region', 'title', 0),
(8, 'code', 'label', 1),
(8, 'code', 'title', 1),
(8, 'post', 'label', 0),
(8, 'post', 'title', 0),
(9, 'admin', 'title', 0),
(9, 'country', 'label', 0),
(9, 'country', 'title', 1),
(9, 'id', 'title', 2),
(10, 'created', 'label', 0),
(10, 'created', 'title', 0),
(11, 'updated', 'label', 0),
(11, 'updated', 'title', 0),
(12, 'key', 'label', 1),
(12, 'key', 'title', 1),
(12, 'licence', 'label', 0),
(12, 'licence', 'title', 0),
(13, 'num', 'label', 0),
(13, 'num', 'title', 0),
(13, 'site', 'label', 1),
(13, 'site', 'title', 1),
(14, 'admin', 'title', 0),
(14, 'id', 'title', 2),
(14, 'subsite', 'title', 1),
(14, 'website', 'label', 0),
(15, 'code', 'label', 1),
(15, 'code', 'title', 0),
(15, 'product', 'label', 0),
(16, 'admin', 'title', 0),
(16, 'currency', 'label', 0),
(16, 'currency', 'title', 1),
(16, 'id', 'title', 2),
(17, 'rate', 'label', 0),
(17, 'rate', 'title', 0),
(18, 'symbol', 'label', 0),
(18, 'symbol', 'title', 0),
(19, 'position', 'label', 0),
(19, 'position', 'title', 0),
(20, 'label', 'label', 0),
(20, 'label', 'title', 0),
(21, 'filename', 'label', 0),
(21, 'filename', 'title', 0),
(22, 'admin', 'title', 0),
(22, 'category', 'label', 0),
(22, 'category', 'title', 1),
(22, 'id', 'title', 2),
(23, 'hidden', 'title', 1),
(23, 'hide', 'label', 0),
(24, 'deleted', 'label', 0),
(24, 'deleted', 'title', 1),
(25, 'admin', 'title', 0),
(25, 'id', 'title', 2),
(25, 'table', 'label', 0),
(25, 'table', 'title', 1),
(26, 'module', 'label', 0),
(26, 'module', 'title', 0),
(27, 'controller', 'label', 0),
(27, 'controller', 'title', 0),
(28, 'action', 'label', 0),
(28, 'action', 'title', 0),
(29, 'file', 'title', 1),
(29, 'image', 'label', 0),
(29, 'image', 'title', 0),
(30, 'id', 'label', 1),
(30, 'id', 'title', 1),
(30, 'root', 'label', 0),
(30, 'root', 'title', 0),
(31, 'lft', 'label', 0),
(31, 'lft', 'title', 0),
(32, 'rgt', 'label', 0),
(32, 'rgt', 'title', 0),
(33, 'admin', 'title', 0),
(33, 'id', 'title', 2),
(34, 'active', 'label', 0),
(34, 'active', 'title', 1),
(35, 'deleted', 'label', 0),
(35, 'deleted', 'title', 0),
(36, 'cssid', 'label', 0),
(36, 'cssid', 'title', 0),
(37, 'cssclass', 'label', 0),
(37, 'cssclass', 'title', 0),
(38, 'note', 'label', 0),
(38, 'note', 'title', 0),
(39, 'keyword', 'label', 0),
(39, 'keyword', 'title', 0),
(40, 'licence', 'label', 0),
(40, 'licence', 'title', 0),
(41, 'contact', 'label', 0),
(41, 'contact', 'title', 0),
(41, 'email', 'label', 1),
(41, 'email', 'title', 1),
(42, 'email', 'label', 1),
(42, 'email', 'title', 1),
(42, 'sales', 'label', 0),
(42, 'sales', 'title', 0),
(43, 'telephone', 'label', 0),
(43, 'telephone', 'title', 0),
(44, 'fax', 'label', 0),
(44, 'fax', 'title', 0),
(45, 'domain', 'label', 0),
(45, 'domain', 'title', 0),
(46, 'dir', 'title', 1),
(46, 'directory', 'label', 1),
(46, 'root', 'label', 0),
(46, 'root', 'title', 0),
(47, 'id', 'title', 1),
(47, 'user', 'label', 0),
(47, 'user', 'title', 0),
(48, 'admin', 'title', 0),
(48, 'id', 'title', 2),
(48, 'template', 'label', 0),
(48, 'template', 'title', 1),
(49, 'renewal', 'label', 0),
(49, 'renewal', 'title', 0),
(50, 'colour', 'label', 0),
(50, 'colour', 'title', 0),
(50, 'scheme', 'label', 1),
(50, 'scheme', 'title', 1),
(51, 'author', 'label', 0),
(51, 'created', 'title', 0),
(52, 'editor', 'label', 0),
(52, 'updated', 'title', 0),
(54, 'admin', 'label', 0),
(54, 'admin', 'title', 1),
(55, 'admin', 'title', 0),
(55, 'id', 'title', 2),
(55, 'section', 'label', 0),
(55, 'section', 'title', 1),
(56, 'sequence', 'label', 0),
(56, 'sequence', 'title', 0),
(57, 'content', 'label', 0),
(57, 'content', 'title', 0),
(58, 'category', 'label', 0),
(58, 'category', 'title', 0),
(58, 'id', 'title', 1),
(59, 'version', 'label', 0),
(59, 'version', 'title', 0),
(60, 'id', 'label', 1),
(60, 'id', 'title', 1),
(60, 'page', 'label', 0),
(60, 'page', 'title', 0),
(61, 'date', 'label', 1),
(61, 'start', 'label', 0),
(61, 'start', 'title', 0),
(62, 'date', 'label', 1),
(62, 'expiry', 'label', 0),
(63, 'cache', 'label', 1),
(63, 'cached', 'title', 1),
(64, 'secure', 'label', 0),
(64, 'secure', 'title', 1),
(65, 'slug', 'label', 0),
(65, 'slug', 'title', 0),
(66, 'item', 'label', 1),
(66, 'item', 'title', 0),
(66, 'page', 'label', 0),
(67, 'content', 'label', 0),
(67, 'content', 'title', 0),
(67, 'type', 'label', 1),
(67, 'type', 'title', 1),
(68, 'section', 'title', 0),
(68, 'seq', 'title', 1),
(68, 'sequence', 'label', 0),
(69, 'item', 'title', 0),
(69, 'seq', 'title', 1),
(69, 'sequence', 'label', 0),
(70, 'firstname', 'label', 0),
(70, 'firstname', 'title', 0),
(71, 'lastname', 'title', 0),
(71, 'surname', 'label', 0),
(72, 'username', 'label', 0),
(72, 'username', 'title', 0),
(73, 'b', 'label', 2),
(73, 'dob', 'title', 0),
(73, 'o', 'label', 1),
(74, 'nick', 'label', 0),
(74, 'nickname', 'title', 0),
(75, 'gender', 'label', 0),
(75, 'gender', 'title', 0),
(76, 'password', 'label', 0),
(76, 'password', 'title', 0),
(77, 'email', 'label', 0),
(77, 'email', 'title', 0),
(78, 'company', 'label', 0),
(78, 'company', 'title', 0),
(79, 'website', 'label', 0),
(79, 'website', 'title', 0),
(80, 'blocked', 'label', 0),
(80, 'blocked', 'title', 1),
(81, 'online', 'label', 0),
(81, 'online', 'title', 1),
(82, 'visits', 'label', 0),
(82, 'visits', 'title', 0),
(83, 'admin', 'title', 0),
(83, 'id', 'title', 2),
(83, 'salutation', 'title', 1),
(83, 'title', 'label', 0),
(84, 'group', 'label', 1),
(84, 'id', 'title', 1),
(84, 'user', 'label', 0),
(84, 'usergroup', 'title', 0),
(85, 'admin', 'title', 0),
(85, 'group', 'label', 0),
(85, 'group', 'title', 1),
(85, 'id', 'title', 2),
(86, 'address', 'description', 1),
(86, 'address', 'label', 0),
(86, 'address', 'title', 0),
(86, 'book', 'label', 1),
(86, 'book', 'title', 1),
(86, 'contact', 'description', 0),
(86, 'id', 'title', 2),
(87, 'header', 'description', 0),
(87, 'header', 'label', 0),
(87, 'header', 'title', 0),
(87, 'id', 'title', 1),
(87, 'template', 'description', 1),
(88, 'footer', 'description', 0),
(88, 'footer', 'label', 0),
(88, 'footer', 'title', 0),
(88, 'id', 'title', 1),
(88, 'template', 'description', 1),
(89, 'visible', 'label', 0),
(89, 'visible', 'title', 1),
(90, 'row', 'label', 0),
(90, 'row', 'title', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin__model__component_index`
--

CREATE TABLE IF NOT EXISTS `admin__model__component_index` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyword`,`field`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin__model__component_index`
--

INSERT INTO `admin__model__component_index` (`id`, `keyword`, `field`, `position`) VALUES
(1, 'logo', 'title', 0),
(2, 'banner', 'content', 4),
(2, 'banner', 'title', 1),
(2, 'id', 'content', 2),
(2, 'image', 'content', 7),
(2, 'rotating', 'content', 3),
(2, 'rotating', 'title', 0),
(2, 'sample', 'content', 6),
(3, 'arrow', 'content', 9),
(3, 'class', 'content', 7),
(3, 'class', 'content', 17),
(3, 'class', 'content', 26),
(3, 'class', 'content', 31),
(3, 'class', 'content', 38),
(3, 'curved', 'content', 8),
(3, 'digg', 'content', 40),
(3, 'follow', 'content', 42),
(3, 'icons', 'content', 18),
(3, 'icons', 'title', 2),
(3, 'id', 'content', 2),
(3, 'media', 'content', 4),
(3, 'media', 'title', 1),
(3, 'social', 'content', 3),
(3, 'social', 'title', 0),
(3, 'socialise', 'content', 34),
(3, 'span', 'content', 30),
(3, 'span', 'content', 35),
(3, 'span', 'content', 37),
(3, 'span', 'content', 46),
(3, 'subtitle', 'content', 39),
(3, 'text', 'content', 27),
(3, 'title', 'content', 32),
(4, 'blank', 'content', 23),
(4, 'blank', 'content', 39),
(4, 'blog', 'content', 41),
(4, 'class', 'content', 2),
(4, 'com', 'content', 21),
(4, 'com', 'content', 37),
(4, 'design', 'content', 26),
(4, 'href', 'content', 15),
(4, 'href', 'content', 32),
(4, 'http', 'content', 16),
(4, 'http', 'content', 33),
(4, 'label', 'content', 6),
(4, 'label', 'content', 12),
(4, 'links', 'title', 2),
(4, 'p', 'content', 1),
(4, 'p', 'content', 44),
(4, 'peleodiase', 'content', 36),
(4, 'rhema', 'content', 19),
(4, 'rhema', 'content', 24),
(4, 'rhema', 'content', 40),
(4, 'sister', 'content', 3),
(4, 'sister', 'title', 0),
(4, 'site', 'title', 1),
(4, 'sites', 'content', 4),
(4, 'sites', 'content', 10),
(4, 'target', 'content', 22),
(4, 'target', 'content', 38),
(4, 'visit', 'content', 7),
(4, 'web', 'content', 25),
(4, 'webdesign', 'content', 20),
(4, 'www', 'content', 18),
(4, 'www', 'content', 35),
(5, 'capture', 'content', 27),
(5, 'contact', 'content', 88),
(5, 'contact', 'content', 92),
(5, 'contemporary', 'content', 52),
(5, 'creative', 'content', 16),
(5, 'custom', 'content', 56),
(5, 'design', 'content', 67),
(5, 'designed', 'content', 57),
(5, 'designed', 'content', 63),
(5, 'email', 'content', 94),
(5, 'emotions', 'content', 31),
(5, 'event', 'content', 6),
(5, 'event', 'content', 35),
(5, 'events', 'content', 23),
(5, 'excitements', 'content', 29),
(5, 'feel', 'content', 85),
(5, 'form', 'content', 93),
(5, 'forward', 'content', 99),
(5, 'free', 'content', 86),
(5, 'h1', 'content', 1),
(5, 'h1', 'content', 8),
(5, 'hearing', 'content', 101),
(5, 'home', 'title', 3),
(5, 'introductory', 'title', 0),
(5, 'matchless', 'content', 66),
(5, 'meet', 'content', 70),
(5, 'needs', 'content', 74),
(5, 'non', 'content', 82),
(5, 'obligatory', 'content', 83),
(5, 'occur', 'content', 38),
(5, 'p', 'content', 10),
(5, 'p', 'content', 44),
(5, 'p', 'content', 46),
(5, 'p', 'content', 76),
(5, 'p', 'content', 78),
(5, 'p', 'content', 105),
(5, 'page', 'title', 4),
(5, 'painstakingly', 'content', 62),
(5, 'photobooks', 'content', 58),
(5, 'photobooks', 'content', 60),
(5, 'photographic', 'content', 73),
(5, 'photographs', 'content', 49),
(5, 'photography', 'content', 7),
(5, 'photography', 'content', 18),
(5, 'pleasure', 'content', 42),
(5, 'presented', 'content', 54),
(5, 'quote', 'content', 84),
(5, 'reportage', 'content', 17),
(5, 'rhema', 'content', 12),
(5, 'specialises', 'content', 14),
(5, 'specific', 'content', 72),
(5, 'strive', 'content', 25),
(5, 'studio', 'content', 13),
(5, 'stylish', 'content', 51),
(5, 'tailored', 'content', 68),
(5, 'telephone', 'content', 96),
(5, 'text', 'title', 1),
(5, 'viewing', 'content', 41),
(5, 'wedding', 'content', 3),
(5, 'weddings', 'content', 20),
(6, '42px', 'content', 19),
(6, '82px', 'content', 17),
(6, 'alt', 'content', 7),
(6, 'bird', 'content', 4),
(6, 'bird', 'content', 13),
(6, 'bird', 'title', 1),
(6, 'blue', 'content', 3),
(6, 'blue', 'content', 12),
(6, 'blue', 'title', 0),
(6, 'class', 'content', 2),
(6, 'height', 'content', 18),
(6, 'image', 'content', 11),
(6, 'img', 'content', 6),
(6, 'media', 'content', 10),
(6, 'photography', 'content', 9),
(6, 'png', 'content', 14),
(6, 'src', 'content', 8),
(6, 'style', 'content', 15),
(6, 'width', 'content', 16),
(8, '4', 'content', 65),
(8, 'addition', 'content', 86),
(8, 'affordable', 'content', 29),
(8, 'continues', 'content', 40),
(8, 'cordial', 'content', 4),
(8, 'description', 'title', 1),
(8, 'design', 'content', 38),
(8, 'designed', 'content', 51),
(8, 'dynamics', 'content', 15),
(8, 'endeaveors', 'content', 39),
(8, 'ended', 'content', 45),
(8, 'ensure', 'content', 100),
(8, 'euphoria', 'content', 56),
(8, 'event', 'content', 18),
(8, 'event', 'content', 43),
(8, 'feel', 'content', 80),
(8, 'finish', 'content', 26),
(8, 'friendly', 'content', 5),
(8, 'interest', 'content', 54),
(8, 'laminated', 'content', 90),
(8, 'life', 'content', 104),
(8, 'normal', 'content', 70),
(8, 'p', 'content', 1),
(8, 'p', 'content', 58),
(8, 'p', 'content', 60),
(8, 'p', 'content', 107),
(8, 'page', 'content', 48),
(8, 'pages', 'content', 63),
(8, 'paper', 'content', 72),
(8, 'photobook', 'content', 37),
(8, 'photobook', 'content', 47),
(8, 'photobook', 'title', 0),
(8, 'photographers', 'content', 8),
(8, 'photographic', 'content', 71),
(8, 'photographs', 'content', 11),
(8, 'photographs', 'content', 88),
(8, 'photography', 'content', 34),
(8, 'practices', 'content', 35),
(8, 'price', 'content', 30),
(8, 'professional', 'content', 7),
(8, 'protected', 'content', 92),
(8, 'provide', 'content', 20),
(8, 'quality', 'content', 10),
(8, 'quality', 'content', 21),
(8, 'quality', 'content', 82),
(8, 'rays', 'content', 97),
(8, 'retain', 'content', 53),
(8, 'standard', 'content', 33),
(8, 'start', 'content', 23),
(8, 'thicker', 'content', 67),
(8, 'times', 'content', 66),
(8, 'touch', 'content', 76),
(8, 'ultra', 'content', 94),
(8, 'understanding', 'content', 13),
(8, 'uniquely', 'content', 50),
(8, 'uniqueness', 'content', 84),
(8, 'unlike', 'content', 32),
(8, 'uv', 'content', 96),
(8, 'violet', 'content', 95),
(9, 'aim', 'content', 62),
(9, 'alternatives', 'content', 137),
(9, 'archive', 'content', 11),
(9, 'become', 'content', 27),
(9, 'care', 'content', 52),
(9, 'carried', 'content', 94),
(9, 'complete', 'content', 64),
(9, 'damaged', 'content', 30),
(9, 'diligence', 'content', 60),
(9, 'discuss', 'content', 121),
(9, 'document', 'content', 8),
(9, 'efficient', 'content', 113),
(9, 'exactly', 'content', 130),
(9, 'family', 'content', 24),
(9, 'finished', 'content', 76),
(9, 'goes', 'content', 17),
(9, 'high', 'content', 73),
(9, 'highest', 'content', 98),
(9, 'history', 'content', 21),
(9, 'inspected', 'content', 79),
(9, 'keen', 'content', 119),
(9, 'leaving', 'content', 81),
(9, 'local', 'content', 20),
(9, 'lost', 'content', 28),
(9, 'maintaining', 'content', 72),
(9, 'materials', 'content', 13),
(9, 'may', 'content', 26),
(9, 'mean', 'content', 46),
(9, 'memories', 'content', 42),
(9, 'needs', 'content', 123),
(9, 'order', 'content', 66),
(9, 'p', 'content', 1),
(9, 'p', 'content', 32),
(9, 'p', 'content', 34),
(9, 'p', 'content', 84),
(9, 'p', 'content', 86),
(9, 'p', 'content', 139),
(9, 'personal', 'content', 23),
(9, 'photo', 'content', 54),
(9, 'photographic', 'content', 12),
(9, 'photographs', 'content', 25),
(9, 'possible', 'content', 70),
(9, 'possible', 'content', 105),
(9, 'professional', 'content', 115),
(9, 'projects', 'content', 110),
(9, 'provide', 'content', 112),
(9, 'quickly', 'content', 68),
(9, 'restoration', 'title', 0),
(9, 'restore', 'content', 9),
(9, 'retouching', 'title', 2),
(9, 'rhema', 'content', 89),
(9, 'services', 'content', 116),
(9, 'standard', 'content', 99),
(9, 'standards', 'content', 74),
(9, 'strive', 'content', 101),
(9, 'studio', 'content', 90),
(9, 'suggest', 'content', 135),
(9, 'suitable', 'content', 136),
(9, 'treasured', 'content', 41),
(9, 'treated', 'content', 56),
(9, 'understand', 'content', 4),
(9, 'utmost', 'content', 59),
(9, 'value', 'content', 39),
(9, 'works', 'content', 77),
(9, 'works', 'content', 92);

-- --------------------------------------------------------

--
-- Table structure for table `admin__model__component_version`
--

CREATE TABLE IF NOT EXISTS `admin__model__component_version` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `content` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin__model__component_version`
--

INSERT INTO `admin__model__component_version` (`id`, `title`, `description`, `content`, `category_id`, `created_at`, `updated_at`, `version`) VALUES
(1, 'Logo', '', '', 1, '2010-12-08 20:50:49', '2010-12-08 20:50:49', 1),
(2, 'Rotating Banner', '', '<div id="rotating_banner">\n	sample image</div>\n', 1, '2010-12-10 00:11:51', '2010-12-10 00:11:51', 1),
(3, 'Social Media Icons', '', '<div id="social_media">\n	<div class="curved_arrow">\n		&nbsp;</div>\n	<div class="icons">\n		&nbsp;</div>\n	<div class="text">\n		<span class="title">we socialise</span> <span class="subtitle">Digg us, follow us, like us</span></div>\n</div>\n', 1, '2010-12-10 09:18:54', '2010-12-10 09:18:54', 1),
(4, 'Sister site links', '', '<p class="sister_sites">\n	<label>Visit our other sites:</label> <a href="http://www.rhema-webdesign.com" target="_blank">Rhema web design</a> &amp; the <a href="http://www.peleodiase.com" target="_blank">Rhema blog</a></p>\n', 1, '2010-12-14 00:41:20', '2010-12-14 00:41:20', 1),
(5, 'Introductory text on home page', '', '<h1>\n	Wedding and Special Event Photography</h1>\n<p>\n	Rhema Studio specialises in creative reportage photography for weddings and special events. We strive to capture the excitements and emotions of your special event as they occur for your viewing pleasure.</p>\n<p>\n	Our photographs are stylish, contemporary and presented in custom designed photobooks. These photobooks are painstakingly designed with each matchless design tailored to meet your specific photographic needs.</p>\n<p>\n	For a non-obligatory quote, feel free to contact us using our contact form, email or telephone. We look forward to hearing from you.</p>\n', 1, '2010-12-14 20:18:49', '2010-12-14 20:18:49', 1),
(6, 'Blue Bird', '', '<div class="blue_bird">\n	<img alt="" src="/photography/media/image/blue_bird.png" style="width: 82px; height: 42px;" /></div>\n', 1, '2010-12-14 21:41:18', '2010-12-14 21:41:18', 1),
(7, 'About Us', '', '', 1, '2010-12-21 20:14:04', '2010-12-21 20:14:04', 1),
(8, 'Photobook description', '', '<p>\n	Our cordial, friendly and professional photographers take quality photographs by understanding the dynamics of each event. We provide quality from start to the finish at an affordable price too! Unlike standard photography practices, our photobook design endeaveors continues after the event had ended. Each photobook page is uniquely designed to retain interest and euphoria.</p>\n<p>\n	These pages are 4 times thicker than a normal photographic paper, so from first touch you get the feel of quality and uniqueness. In addition, the photographs are laminated to protected from Ultra Violet (UV) rays&nbsp; to ensure they last a life time.</p>\n', 1, '2010-12-21 20:29:26', '2010-12-21 20:29:26', 1),
(9, 'Restoration and Retouching', '', '<p>\n	We understand the need to document, restore and archive photographic materials because as time goes by, your local history or personal family photographs may become lost or damaged.</p>\n<p>\n	We know the value of treasured memories and what they mean to you, while in our care your photo is treated with the utmost diligence.We aim to complete your order as quickly as possible while maintaining high standards. All finished works are inspected before leaving us.</p>\n<p>\n	At Rhema Studio our works are carried out to the highest standard, we strive for the best possible results in all our projects. We provide efficient and professional services, and are keen to discuss your needs with you so that you get exactly what you want or suggest suitable alternatives.</p>\n', 1, '2010-12-21 20:34:36', '2010-12-21 20:34:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin__model__featured_version`
--

CREATE TABLE IF NOT EXISTS `admin__model__featured_version` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_file` text,
  `thumb` text,
  `note` varchar(255) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `css` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `sequence` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin__model__featured_version`
--


-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'General', '', '2010-11-29 20:45:12', '2010-11-29 20:45:12', 8),
(2, 'Images', '', '2010-12-14 21:41:26', '2010-12-14 21:41:26', 8),
(3, 'Photobook', 'All about photobooks', '2010-12-21 20:29:48', '2010-12-21 20:29:48', 8);

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE IF NOT EXISTS `component` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `content` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_idx` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`id`, `title`, `description`, `content`, `category_id`, `created_at`, `updated_at`, `version`, `created_by`, `updated_by`, `admin_subsite_id`) VALUES
(1, 'Logo', '', '', 1, '2010-12-08 20:50:49', '2010-12-08 20:50:49', 1, 1, 1, 8),
(2, 'Rotating Banner', '', '<div id="rotating_banner">\n	<img alt="" src="/photography/media/image/banner_image_couple.png" /></div>\n', 1, '2010-12-10 00:11:51', '2010-12-10 01:01:36', 1, 1, 1, 8),
(3, 'Social Media Icons', '', '<div id="social_media">\n	<div class="curved_arrow">\n		<img alt="" src="/photography/media/image/curved_arrow.png" style="width: 47px; height: 75px;" /></div>\n	<div class="icons">\n		<img alt="facebook" src="/photography/media/image/facebook.png" style="width: 38px; height: 38px;" /><img alt="twitter" src="/photography/media/image/twitter.png" style="width: 38px; height: 38px;" /> <img alt="flikr" src="/photography/media/image/flikr.png" style="width: 38px; height: 38px;" /><img alt="stumble upon" src="/photography/media/image/stumble_upon.png" style="width: 38px; height: 38px;" /><img alt="digg" src="/photography/media/image/digg.png" style="width: 38px; height: 38px;" /></div>\n	<div class="text">\n		<span class="title">we socialise</span> <span class="subtitle">Digg us, follow us, like us</span></div>\n</div>\n', 1, '2010-12-10 09:18:54', '2010-12-14 00:12:12', 1, 1, 1, 8),
(4, 'Sister site links', '', '<div class="sister_sites">\n	<label>Visit our other sites:</label> <a href="http://www.rhema-webdesign.com" target="_blank">Rhema web design</a> &amp; the <a href="http://www.peleodiase.com" target="_blank">Rhema blog</a></div>\n', 1, '2010-12-14 00:41:20', '2010-12-14 00:42:28', 1, 1, 1, 8),
(5, 'Introductory text on home page', '', '<h1>\n	Wedding &amp; Special Event Photography</h1>\n<p>\n	Rhema Studio specialises in creative reportage photography for weddings and special events. We strive to capture the excitements and emotions of your special event as they occur for your viewing pleasure.</p>\n<p>\n	Our photographs are stylish, contemporary and presented in custom designed photobooks. These photobooks are painstakingly designed with each matchless design tailored to meet your specific photographic needs. For a non-obligatory quote contact us using our contact form, email or by telephone.</p>\n<p>\n	Registered members are eligible for discounts and special offers. We look forward to doing business with you</p>\n<div class="what-next">\n	What next ?</div>\n', 1, '2010-12-14 20:18:49', '2010-12-21 20:11:20', 1, 1, 1, 8),
(6, 'Blue Bird', '', '<div class="blue_bird">\n	<img alt="" src="/photography/media/image/blue_bird.png" style="width: 82px; height: 42px;" /></div>\n', 2, '2010-12-14 21:41:18', '2010-12-14 21:41:44', 1, 1, 1, 8),
(7, 'About Us', '', '<p>\n	Rhema Studio is based in London, with branches in Bradford and Liverpool in the UK and Lagos and Benin in Nigeria. Rhema Studio provides matchless photobook designs, event photography, photo restoration and enhancement and manipulation to clients worldwide.</p>\n<p>\n	At Rhema Studio we are friendly and highly motivated. By making use of cutting edge photography and studio equipment, industry standard software and the Internet, we offer excellent services to businesses and the public alike.</p>\n<p>\n	Our culture is centered around our core values and focuses on promoting positive service to all our customers. We are a happy, cheerful and positive thinking staff and aim to make everyone feel that their role is as vital in the whole process as the next persons.</p>\n', 1, '2010-12-21 20:14:04', '2010-12-21 20:21:41', 1, 1, 1, 8),
(8, 'Photobook description', '', '<p>\n	Our cordial, friendly and professional photographers take quality photographs by understanding the dynamics of each event. We provide quality from start to the finish at an affordable price too! Unlike standard photography practices, our photobook design endeaveors continues after the event had ended. Each photobook page is uniquely designed to retain interest and euphoria.</p>\n<p>\n	These pages are 4 times thicker than a normal photographic paper, so from first touch you get the feel of quality and uniqueness. In addition, the photographs are laminated to protected from Ultra Violet (UV) rays&nbsp; to ensure they last a life time.</p>\n', 3, '2010-12-21 20:29:26', '2010-12-21 20:30:12', 1, 1, 1, 8),
(9, 'Restoration and Retouching', '', '<p>\n	We understand the need to document, restore and archive photographic materials because as time goes by, your local history or personal family photographs may become lost or damaged.</p>\n<p>\n	We know the value of treasured memories and what they mean to you, while in our care your photo is treated with the utmost diligence.We aim to complete your order as quickly as possible while maintaining high standards. All finished works are inspected before leaving us.</p>\n<p>\n	At Rhema Studio our works are carried out to the highest standard, we strive for the best possible results in all our projects. We provide efficient and professional services, and are keen to discuss your needs with you so that you get exactly what you want or suggest suitable alternatives.</p>\n', 1, '2010-12-21 20:34:36', '2010-12-21 20:34:36', 1, 1, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `display_group`
--

CREATE TABLE IF NOT EXISTS `display_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `display_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `doctrine__record__abstract`
--

CREATE TABLE IF NOT EXISTS `doctrine__record__abstract` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `doctrine__record__abstract`
--


-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE IF NOT EXISTS `featured` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_file` text,
  `thumb` text,
  `note` varchar(255) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `css` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `sequence` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id_idx` (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `featured`
--


-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE IF NOT EXISTS `inquiry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `salutation_id` varchar(45) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `messsage` text NOT NULL,
  `is_resolved` tinyint(4) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `subject_id_idx` (`subject_id`),
  KEY `salutation_id_idx` (`salutation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `inquiry`
--


-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `module` varchar(45) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `sequence` mediumint(9) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `is_label` tinyint(4) DEFAULT '0',
  `is_visible` tinyint(4) DEFAULT '1',
  `page_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `root_id` bigint(20) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sluggable_idx` (`slug`,`label`,`admin_subsite_id`),
  KEY `page_id_idx` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `description`, `label`, `module`, `controller`, `sequence`, `action`, `image_file`, `is_label`, `is_visible`, `page_id`, `created_at`, `updated_at`, `root_id`, `lft`, `rgt`, `level`, `slug`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 'Main', 'Main menu', 'Main', 'storefront', 'index', NULL, 'index', NULL, 0, 1, NULL, '2010-11-28 20:30:00', '2010-12-10 09:31:11', 1, 1, 12, 0, 'index', NULL, 8),
(2, 'Home', 'Home page', 'Home', 'storefront', 'index', 1, 'index', '', 0, 1, 1, '2010-11-28 20:30:48', '2010-12-10 09:31:27', 1, 2, 3, 1, 'home', NULL, 8),
(3, 'Login', '', 'Login', 'storefront', 'index', 1, 'login', '', 0, 0, 2, '2010-11-29 20:32:43', '2010-12-14 01:50:20', 1, 10, 11, 1, 'login', NULL, 8),
(4, 'About Us', '', 'About Us', 'storefront', 'index', 1, 'about-us', '', 0, 1, 3, '2010-12-10 09:30:55', '2010-12-14 01:08:59', 1, 4, 5, 1, 'about-us', NULL, 8),
(5, 'Portfolio', '', 'Portfolio', 'storefront', 'index', 1, 'portfolio', '', 0, 1, 4, '2010-12-10 09:31:01', '2010-12-14 01:32:54', 1, 6, 7, 1, 'portfolio', NULL, 8),
(6, 'Contact Us', '', 'Contact Us', 'storefront', 'index', 1, 'contact-us', '', 0, 1, 5, '2010-12-10 09:31:11', '2010-12-14 01:33:05', 1, 8, 9, 1, 'contact-us', NULL, 8),
(9, 'Bottom', 'Bottom Menu', 'Bottom', 'storefront', 'index', 1, 'index', NULL, 0, 1, NULL, '2010-12-09 09:35:30', '2010-12-23 21:47:18', 9, 1, 16, 0, NULL, NULL, 8),
(10, 'Top', 'Top menu', 'top menu', 'storefront', 'index', 1, 'index', NULL, 0, 1, NULL, '2010-12-09 09:37:05', '2010-12-10 09:37:13', 10, 1, 2, 0, NULL, NULL, 8),
(11, 'Home', '', 'Home', 'storefront', 'index', 1, 'index', '', 0, 1, 1, '2010-12-10 09:41:39', '2010-12-10 09:57:15', 9, 2, 3, 1, 'home-1', NULL, 8),
(12, 'About Us', '', 'About Us', 'storefront', 'index', 1, 'about-us', '', 0, 1, 3, '2010-12-10 09:41:44', '2010-12-14 01:39:46', 9, 4, 5, 1, 'about-us-1', NULL, 8),
(13, 'Portfolio', '', 'Portfolio', 'storefront', 'index', 1, 'portfolio', '', 0, 1, 4, '2010-12-10 09:41:49', '2010-12-23 21:47:18', 9, 8, 9, 1, 'portfolio-1', NULL, 8),
(14, 'Pricing', '', 'Pricing', 'storefront', 'index', 1, 'pricing', '', 0, 1, 7, '2010-12-10 09:41:55', '2010-12-23 23:01:27', 9, 10, 11, 1, 'pricing', NULL, 8),
(15, 'Contact Us', '', 'Contact Us', 'storefront', 'index', 1, 'contact-us', '', 0, 1, 5, '2010-12-10 09:42:02', '2010-12-23 21:47:18', 9, 12, 13, 1, 'contact-us-1', NULL, 8),
(16, 'What next', 'What next', 'What next', 'storefront', 'index', NULL, 'what-next', NULL, 0, 1, 1, '2010-12-09 09:48:13', '2010-12-23 21:33:38', 16, 1, 8, 0, NULL, NULL, 8),
(17, 'Prices and packages', '', 'view packages', 'storefront', 'index', 1, 'prices-and-packages', '', 0, 1, 7, '2010-12-10 09:49:46', '2010-12-23 21:51:53', 16, 2, 3, 1, 'pricing-1', NULL, 8),
(18, 'Book us', '', 'Book us', 'storefront', 'index', 1, 'book-us', '', 0, 1, 8, '2010-12-10 09:49:53', '2010-12-23 21:36:56', 16, 4, 5, 1, 'book-us', NULL, 8),
(19, 'Register', '', 'Register', 'storefront', 'index', 1, 'register', '', 0, 0, 6, '2010-12-22 00:35:31', '2010-12-23 21:47:18', 9, 14, 15, 1, 'register', NULL, 8),
(20, 'My Account', '', 'View my account', 'storefront', 'index', 1, 'my-account', '', 0, 1, 9, '2010-12-23 21:33:38', '2010-12-23 21:52:22', 16, 6, 7, 1, 'my-account', NULL, 8),
(21, 'My Account', '', 'My Account', 'storefront', 'index', 1, 'my-account', '', 0, 1, 9, '2010-12-23 21:46:56', '2010-12-23 21:49:59', 9, 6, 7, 1, 'my-account-1', NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `keyword` text,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_hidden` tinyint(4) DEFAULT '0',
  `is_cached` tinyint(4) DEFAULT '0',
  `is_secure` tinyint(4) DEFAULT '0',
  `template_id` int(11) NOT NULL,
  `page_header_id` int(11) NOT NULL,
  `page_footer_id` int(11) NOT NULL,
  `note` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sluggable_idx` (`slug`,`title`,`admin_subsite_id`),
  KEY `category_id_idx` (`category_id`),
  KEY `page_header_id_idx` (`page_header_id`),
  KEY `template_id_idx` (`template_id`),
  KEY `page_footer_id_idx` (`page_footer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `description`, `category_id`, `is_active`, `keyword`, `start_at`, `end_at`, `is_hidden`, `is_cached`, `is_secure`, `template_id`, `page_header_id`, `page_footer_id`, `note`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `admin_subsite_id`, `slug`) VALUES
(1, 'Home Page', '', 1, 1, '', '2010-11-29 20:45:57', '2010-11-29 20:45:57', 0, 0, 0, 1, 2, 1, '', '2010-11-29 20:46:30', '2010-12-08 20:48:54', 1, 1, NULL, 8, 'home-page'),
(2, 'Login', '', 1, 1, '', '2010-11-29 20:45:57', '2010-11-29 20:45:57', 0, 0, 0, 1, 2, 1, '', '2010-11-29 20:46:53', '2010-12-10 10:00:20', 1, 1, NULL, 8, 'login'),
(3, 'About Us', '', 1, 0, '', '2010-12-14 01:08:21', '2010-12-14 01:08:21', 0, 0, 0, 1, 1, 1, '', '2010-12-14 01:08:39', '2010-12-14 01:08:39', 1, 1, NULL, 8, 'about-us'),
(4, 'Portfolio', '', 1, 0, '', '2010-12-14 01:31:55', '2010-12-14 01:31:55', 0, 0, 0, 1, 1, 1, '', '2010-12-14 01:32:14', '2010-12-14 01:32:14', 1, 1, NULL, 8, 'portfolio'),
(5, 'Contact Us', '', 1, 0, '', '2010-12-14 01:31:55', '2010-12-14 01:31:55', 0, 0, 0, 1, 2, 1, '', '2010-12-14 01:32:33', '2010-12-22 23:45:04', 1, 1, NULL, 8, 'contact-us'),
(6, 'Registration Page', 'Register with Rhema Studio and receive discounts and offers. Registration is free and simple.', 1, 0, '', '2010-12-22 00:35:39', '2010-12-22 00:35:39', 0, 0, 0, 1, 1, 2, '', '2010-12-22 00:36:41', '2010-12-22 00:36:41', 1, 1, NULL, 8, 'registration-page'),
(7, 'Prices and Packages', 'Rhema studio offers excellent photobook and photography services at affordable prices. ', 1, 0, 'photobook prices, photography services', '2010-12-23 21:27:05', '2010-12-23 21:27:05', 0, 0, 0, 1, 1, 1, '', '2010-12-23 21:28:45', '2010-12-23 21:28:45', 1, 1, NULL, 8, 'prices-and-packages'),
(8, 'Online Booking', '', 1, 0, '', '2010-12-23 21:27:05', '2010-12-23 21:27:05', 0, 0, 0, 1, 1, 1, '', '2010-12-23 21:29:13', '2010-12-23 21:29:13', 1, 1, NULL, 8, 'online-booking'),
(9, 'My Account', '', 1, 0, '', '2010-12-23 21:34:35', '2010-12-23 21:34:35', 0, 0, 0, 1, 1, 1, '', '2010-12-23 21:34:54', '2010-12-23 21:34:54', 1, 1, NULL, 8, 'my-account');

-- --------------------------------------------------------

--
-- Table structure for table `page_footer`
--

CREATE TABLE IF NOT EXISTS `page_footer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `template_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `category_id_idx` (`category_id`),
  KEY `template_id_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page_footer`
--

INSERT INTO `page_footer` (`id`, `title`, `template_id`, `description`, `category_id`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 'Default footer', 3, '', 1, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 1, 1, NULL, 8),
(2, 'Home footer', 5, '', 1, 0, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 1, 1, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `page_header`
--

CREATE TABLE IF NOT EXISTS `page_header` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `template_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `category_id_idx` (`category_id`),
  KEY `template_id_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page_header`
--

INSERT INTO `page_header` (`id`, `title`, `template_id`, `description`, `category_id`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 'Default header', 2, '', 1, 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 1, 1, NULL, 8),
(2, 'Home page', 7, '', 1, 1, '2010-11-29 20:45:12', '2010-12-08 20:49:12', 1, 1, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `page_layout`
--

CREATE TABLE IF NOT EXISTS `page_layout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item` int(11) NOT NULL,
  `admin_content_type_id` varchar(45) NOT NULL,
  `page_id` int(11) NOT NULL,
  `admin_table_id` int(11) NOT NULL,
  `admin_section_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `section_seq` int(11) DEFAULT '1',
  `item_seq` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `template_id_idx` (`template_id`),
  KEY `page_id_idx` (`page_id`),
  KEY `admin_content_type_id_idx` (`admin_content_type_id`),
  KEY `admin_section_id_idx` (`admin_section_id`),
  KEY `admin_table_id_idx` (`admin_table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `page_layout`
--

INSERT INTO `page_layout` (`id`, `item`, `admin_content_type_id`, `page_id`, `admin_table_id`, `admin_section_id`, `template_id`, `section_seq`, `item_seq`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2', 2, 15, 24, 7, 0, 0, '2010-12-08 20:52:46', '2010-12-08 20:52:46', NULL),
(2, 1, '4', 2, 15, 4, 7, 1, 0, '2010-12-08 20:52:46', '2010-12-08 20:52:46', NULL),
(3, 4, '8', 2, 33, 21, 1, 2, 0, '2010-12-08 20:54:39', '2010-12-10 10:00:47', '2010-12-10 10:00:47'),
(4, 4, '1', 2, 33, 21, 1, 2, 0, '2010-12-08 20:55:19', '2010-12-10 10:00:47', '2010-12-10 10:00:47'),
(5, 2, '2', 2, 15, 1, 7, 2, 0, '2010-12-10 00:12:11', '2010-12-10 00:12:11', NULL),
(6, 3, '2', 1, 59, 18, 3, 3, 0, '2010-12-10 09:21:59', '2010-12-21 00:31:21', NULL),
(7, 9, '4', 1, 59, 17, 3, 2, 0, '2010-12-10 09:43:52', '2010-12-21 00:31:21', NULL),
(8, 16, '4', 1, 33, 8, 1, 1, 1, '2010-12-10 09:51:29', '2010-12-14 20:56:35', NULL),
(9, 4, '8', 2, 33, 8, 1, 1, 0, '2010-12-10 09:56:35', '2010-12-10 10:00:47', '2010-12-10 10:00:47'),
(10, 4, '1', 2, 33, 8, 1, 1, 0, '2010-12-10 10:00:47', '2010-12-10 10:00:47', NULL),
(11, 4, '2', 1, 59, 17, 3, 2, 1, '2010-12-14 00:41:47', '2010-12-21 00:31:21', NULL),
(12, 1, '2', 1, 15, 24, 2, 0, 0, '2010-12-14 01:10:50', '2010-12-14 01:10:50', NULL),
(13, 1, '4', 1, 15, 4, 2, 1, 0, '2010-12-14 01:10:50', '2010-12-14 01:10:50', NULL),
(14, 7, '1', 1, 59, 19, 3, 0, 0, '2010-12-14 01:53:41', '2010-12-22 01:51:46', '2010-12-22 01:51:46'),
(15, 5, '1', 1, 59, 19, 3, 1, 0, '2010-12-14 01:57:59', '2010-12-21 00:31:21', NULL),
(16, 5, '2', 1, 33, 8, 1, 1, 0, '2010-12-14 20:19:08', '2010-12-14 20:56:35', NULL),
(17, 5, '1', 1, 33, 19, 1, 4, 0, '2010-12-14 20:56:35', '2010-12-21 00:35:00', '2010-12-21 00:35:00'),
(18, 19, '1', 1, 33, 19, 1, 4, 1, '2010-12-14 20:56:35', '2010-12-21 00:35:00', '2010-12-21 00:35:00'),
(19, 6, '2', 1, 59, 17, 3, 0, 2, '2010-12-14 21:42:08', '2010-12-22 01:51:46', '2010-12-22 01:51:46'),
(20, 6, '2', 1, 33, 8, 1, 1, 2, '2010-12-14 21:43:12', '2010-12-21 00:35:00', '2010-12-21 00:35:00'),
(21, 6, '2', 1, 33, 19, 1, 4, 0, '2010-12-14 21:43:28', '2010-12-21 00:35:00', '2010-12-21 00:35:00'),
(22, 22, '1', 1, 33, 9, 1, 2, 0, '2010-12-15 00:17:50', '2010-12-15 00:17:50', NULL),
(23, 19, '1', 1, 59, 19, 3, 1, 1, '2010-12-21 00:28:45', '2010-12-21 00:31:21', NULL),
(24, 7, '2', 3, 33, 8, 1, 1, 0, '2010-12-21 20:19:12', '2010-12-21 20:19:12', NULL),
(25, 6, '1', 2, 15, 1, 7, 2, 1, '2010-12-22 00:09:56', '2010-12-22 01:50:19', '2010-12-22 01:50:19'),
(26, 21, '1', 5, 33, 8, 1, 1, 0, '2010-12-22 00:24:05', '2010-12-22 01:00:49', '2010-12-22 01:00:49'),
(27, 21, '1', 6, 33, 8, 1, 1, 0, '2010-12-22 00:37:35', '2010-12-22 00:37:35', NULL),
(28, 23, '1', 5, 33, 8, 1, 1, 0, '2010-12-22 01:00:49', '2010-12-22 01:00:49', NULL),
(29, 6, '1', 1, 59, 26, 3, 0, 0, '2010-12-22 01:50:47', '2010-12-22 01:51:46', '2010-12-22 01:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `sequence` int(11) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `title`, `description`, `sequence`, `is_admin`, `created_at`, `updated_at`, `admin_subsite_id`, `created_by`, `updated_by`) VALUES
(5, 'Guest', 'Unregistered user and  users that are not logged in are regarded as guests.', 1, 0, '2010-12-10 09:55:22', '2010-12-10 09:55:22', 1, 1, 1),
(6, 'Member', 'Registered users with an online account.', 2, 0, '2010-12-10 09:55:22', '2010-12-10 09:55:22', 1, 1, 1),
(7, 'Admininstrator', 'Admin', 3, 0, '2010-12-10 09:55:22', '2010-12-10 09:55:22', 1, 1, 1),
(8, 'Super', 'Access to all menus and modules', 10, 0, '2010-12-10 09:55:22', '2010-12-10 09:55:22', 1, 1, 1),
(17, 'Guest', 'Unregistered user and  users that are not logged in are regarded as guests.', 1, 0, '2010-12-10 09:55:30', '2010-12-10 09:55:30', 8, 1, 1),
(18, 'Member', 'Registered users with an online account.', 2, 0, '2010-12-10 09:55:30', '2010-12-10 09:55:30', 8, 1, 1),
(19, 'Admininstrator', 'Admin', 3, 0, '2010-12-10 09:55:30', '2010-12-10 09:55:30', 8, 1, 1),
(20, 'Super', 'Access to all menus and modules', 10, 0, '2010-12-10 09:55:30', '2010-12-10 09:55:30', 8, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salutation`
--

CREATE TABLE IF NOT EXISTS `salutation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `salutation`
--

INSERT INTO `salutation` (`id`, `title`, `description`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'Mr', 'Mister', '2010-12-10 00:05:30', '2010-12-10 00:05:30', 8);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_setting_id` int(11) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `param` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_setting_id_idx` (`admin_setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `setting`
--


-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `title`, `description`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'Feed Back', '', '2010-12-22 01:09:41', '2010-12-22 01:09:41', 8);

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `is_header` tinyint(4) DEFAULT '0',
  `is_footer` tinyint(4) DEFAULT '0',
  `image_file` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_idx` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `title`, `description`, `is_header`, `is_footer`, `image_file`, `thumb`, `category_id`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'Default - Body', '', 0, 0, '', '', 1, '2010-11-29 20:45:12', '2010-12-08 20:46:21', 8),
(2, 'header', '', 1, 0, '', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 8),
(3, 'Footer', '', 0, 1, '', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 8),
(4, 'Home Page - Body', '', 0, 0, '', '', 1, '2010-11-29 20:45:12', '2010-12-08 20:45:49', 8),
(5, 'Home page footer', '', 0, 1, '', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 8),
(6, 'Blog', 'Blog template', 0, 0, '', '', 1, '2010-11-29 20:45:12', '2010-11-29 20:45:12', 8),
(7, 'Home page header', '', 1, 0, '', '', 1, '2010-12-08 20:47:23', '2010-12-08 20:47:23', 8);

-- --------------------------------------------------------

--
-- Table structure for table `template_section`
--

CREATE TABLE IF NOT EXISTS `template_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_section_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sequence` int(11) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_section_id_idx` (`admin_section_id`),
  KEY `template_id_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `template_section`
--

INSERT INTO `template_section` (`id`, `admin_section_id`, `template_id`, `sequence`, `deleted_at`) VALUES
(1, 20, 1, 1, '2010-12-10 01:17:58'),
(2, 21, 1, 2, '2010-12-10 01:17:58'),
(3, 19, 1, 3, '2010-12-14 01:56:26'),
(4, 25, 1, 0, NULL),
(5, 4, 2, 1, NULL),
(6, 1, 2, 2, NULL),
(7, 23, 3, 3, '2010-12-10 09:22:25'),
(8, 19, 3, 0, '2010-12-14 20:51:59'),
(9, 3, 2, 2, '2010-12-14 01:10:08'),
(10, 22, 2, 0, '2010-12-14 01:10:08'),
(11, 17, 3, 2, NULL),
(12, 18, 3, 3, NULL),
(13, 23, 5, 2, NULL),
(14, 25, 4, 0, NULL),
(15, 18, 5, 1, NULL),
(16, 17, 5, 0, NULL),
(17, 20, 4, 1, NULL),
(18, 21, 4, 2, NULL),
(19, 13, 6, 0, NULL),
(20, 14, 6, 1, NULL),
(21, 15, 6, 2, NULL),
(22, 24, 7, 0, NULL),
(23, 4, 7, 1, NULL),
(24, 1, 7, 2, NULL),
(25, 8, 1, 1, NULL),
(26, 9, 1, 2, NULL),
(27, 24, 2, 0, NULL),
(28, 12, 3, 3, '2010-12-14 20:51:59'),
(29, 19, 1, 4, NULL),
(30, 26, 1, 3, NULL),
(31, 26, 3, 0, '2010-12-21 00:28:09'),
(32, 19, 3, 1, NULL),
(33, 26, 3, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(80) NOT NULL,
  `lastname` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `dob_at` datetime DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `password` varchar(40) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `company` varchar(80) DEFAULT NULL,
  `image_file` text,
  `website` varchar(80) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_blocked` tinyint(3) unsigned DEFAULT NULL,
  `is_active` tinyint(3) unsigned DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `is_member` tinyint(4) DEFAULT NULL,
  `is_online` tinyint(3) unsigned DEFAULT NULL,
  `visits` int(10) unsigned DEFAULT NULL,
  `salutation_id` int(11) NOT NULL,
  `usergroup_id` int(10) unsigned NOT NULL,
  `admin_group_id` int(11) DEFAULT NULL,
  `admin_menu_id` int(11) DEFAULT NULL,
  `is_mailing` tinyint(4) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `note` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nickname` (`nickname`),
  KEY `role_id_idx` (`role_id`),
  KEY `admin_group_id_idx` (`admin_group_id`),
  KEY `admin_menu_id_idx` (`admin_menu_id`),
  KEY `salutation_id_idx` (`salutation_id`),
  KEY `usergroup_id_idx` (`usergroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `dob_at`, `nickname`, `gender`, `password`, `telephone`, `mobile`, `fax`, `email`, `company`, `image_file`, `website`, `start_at`, `end_at`, `is_blocked`, `is_active`, `is_admin`, `is_member`, `is_online`, `visits`, `salutation_id`, `usergroup_id`, `admin_group_id`, `admin_menu_id`, `is_mailing`, `role_id`, `note`, `created_at`, `updated_at`, `admin_subsite_id`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 'Site', 'Admin', 'odiaseo', NULL, NULL, 'male', 'testing', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 20, NULL, '2010-12-10 00:09:10', '2010-12-10 00:09:13', 8, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text,
  `is_hidden` tinyint(3) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`id`, `title`, `description`, `is_hidden`, `created_at`, `updated_at`, `admin_subsite_id`, `deleted_at`) VALUES
(1, 'Member', '', 0, '2010-12-10 00:06:48', '2010-12-10 00:06:48', 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE IF NOT EXISTS `user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address_book_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `address_book_id_idx` (`address_book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_address`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_subsite`
--

CREATE TABLE IF NOT EXISTS `user_subsite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `admin_subsite_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `admin_subsite_id_idx` (`admin_subsite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_subsite`
--


-- --------------------------------------------------------

--
-- Table structure for table `web_form`
--

CREATE TABLE IF NOT EXISTS `web_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `label` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pretext` varchar(255) DEFAULT NULL,
  `posttext` varchar(255) DEFAULT NULL,
  `widget` varchar(45) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `admin_table_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_table_id_idx` (`admin_table_id`),
  KEY `category_id_idx` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `web_form`
--


-- --------------------------------------------------------

--
-- Table structure for table `web_form_field`
--

CREATE TABLE IF NOT EXISTS `web_form_field` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `web_form_id` int(11) NOT NULL,
  `field` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `web_form_id_idx` (`web_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `web_form_field`
--

