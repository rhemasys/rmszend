-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2011 at 12:56 AM
-- Server version: 5.1.50
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rmszend`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT 'home',
  `line1` varchar(45) NOT NULL,
  `line2` varchar(45) DEFAULT NULL,
  `line3` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) DEFAULT NULL,
  `post_code` varchar(45) NOT NULL,
  `region` varchar(45) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `latitude` double(18,2) DEFAULT NULL,
  `longitude` double(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`id`, `title`, `description`, `line1`, `line2`, `line3`, `city`, `state`, `post_code`, `region`, `country`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, 'Home', 'home', '77 Stretton Road', '', '', 'Croydon', '', 'CR0 6ET', '', 'UK', '2011-05-18 20:56:12', '2011-05-18 20:56:12', NULL, NULL);

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
  `root_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `admin_acl`
--

INSERT INTO `admin_acl` (`id`, `title`, `scope`, `resource`, `privilege`, `allow`, `role`, `root_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `admin_subsite_id`) VALUES
(1, 'menu', 'site', 'mvc:storefront.index', 'index', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(2, 'admin_menu', 'admin', 'mvc:admin.index', 'index', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(3, 'admin_menu', 'admin', 'mvc:admin.index', 'page', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(4, 'admin_menu', 'admin', 'mvc:admin.index', 'siteaccess', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(5, 'admin_menu', 'admin', 'mvc:admin.index', 'registry', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(6, 'admin_menu', 'admin', 'mvc:admin.index', 'menu', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(7, 'admin_menu', 'admin', 'mvc:admin.index', 'adminaccess', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(8, 'admin_menu', 'admin', 'mvc:admin.index', 'sys-info', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(9, 'admin_menu', 'admin', 'mvc:cms.index', 'index', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(10, 'admin_menu', 'admin', 'mvc:blog.index', 'index', 1, 'super', 3, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(11, 'admin_menu', 'admin', 'mvc:blog.index', 'category', 1, 'super', 3, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(12, 'admin_menu', 'admin', 'mvc:blog.index', 'addpost', 1, 'super', 3, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(13, 'admin_menu', 'admin', 'mvc:blog.index', 'comment', 1, 'super', 3, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(14, 'admin_menu', 'admin', 'mvc:ecom.index', 'index', 1, 'super', 4, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(15, 'admin_menu', 'admin', 'mvc:ecom.index', 'setting', 1, 'super', 4, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(16, 'admin_menu', 'admin', 'mvc:ecom.index', 'template', 1, 'super', 4, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(17, 'admin_menu', 'admin', 'mvc:email.index', 'index', 1, 'super', 5, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(18, 'admin_menu', 'admin', 'mvc:admin.grid', 'table', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(19, 'admin_menu', 'admin', 'mvc:admin.grid', 'index', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(20, 'admin_menu', 'admin', 'mvc:cms.menu', 'index', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(21, 'admin_menu', 'admin', 'mvc:cms.menu', 'frontend', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(22, 'admin_menu', 'admin', 'mvc:cms.menu', 'siteaccess', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(23, 'admin_menu', 'admin', 'mvc:cms.design', 'page', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(24, 'admin_menu', 'admin', 'mvc:cms.design', 'feature', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(25, 'admin_menu', 'admin', 'mvc:cms.design', 'form', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(26, 'admin_menu', 'admin', 'mvc:null.null', 'index', 1, 'super', 3, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(27, 'admin_menu', 'admin', 'mvc:cms.admin', 'help', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(28, 'admin_menu', 'admin', 'mvc:cms.admin', 'setting', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(29, 'admin_menu', 'admin', 'mvc:help.index', 'index', 1, 'super', 17, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(30, 'admin_menu', 'admin', 'mvc:help.search', 'index', 1, 'super', 17, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(31, 'admin_menu', 'admin', 'mvc:help.search', 'keyword', 1, 'super', 17, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(32, 'admin_menu', 'admin', 'mvc:admin.help', 'index', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(33, 'admin_menu', 'admin', 'mvc:admin.help', 'search', 1, 'super', 17, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(34, 'admin_menu', 'admin', 'mvc:cms.manage', 'user', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(35, 'admin_menu', 'admin', 'mvc:cms.manage', 'event', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(36, 'admin_menu', 'admin', 'mvc:cms.manage', 'index', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(37, 'admin_menu', 'admin', 'mvc:cms.manage', 'portfolio', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(38, 'admin_menu', 'admin', 'mvc:cms.manage', 'review', 1, 'super', 2, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(39, 'admin_menu', 'admin', 'mvc:admin.layout', 'tool', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(40, 'admin_menu', 'admin', 'mvc:admin.database', 'diff', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(41, 'admin_menu', 'admin', 'mvc:admin.database', 'schema-view', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(42, 'admin_menu', 'admin', 'mvc:admin.database', 'manage-table', 1, 'super', 1, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(43, 'admin_menu', 'admin', 'mvc:help.design', 'index', 1, 'super', 17, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(44, 'admin_menu', 'admin', 'mvc:ecom.menu', 'product-navigation', 1, 'super', 4, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(45, 'admin_menu', 'admin', 'mvc:ecom.menu', 'ecomaccess', 1, 'super', 4, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(46, 'admin_menu', 'admin', 'mvc:ecom.stock', 'index', 1, 'super', 4, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(47, 'admin_menu', 'admin', 'mvc:ecom.stock', 'product', 1, 'super', 4, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(48, 'admin_menu', 'admin', 'mvc:ecom.stock', 'category', 1, 'super', 4, '2011-04-09 03:25:50', '2011-04-09 03:25:50', 1, 1, 1),
(49, 'menu', 'site', 'mvc:storefront.index', 'index', 1, 'guest', 1, '2011-04-09 03:27:25', '2011-04-09 03:27:25', 1, 1, 1),
(50, 'menu', 'site', 'mvc:storefront.index', 'index', 1, 'member', 3, '2011-04-09 11:46:28', '2011-04-09 11:46:28', 1, 1, 1),
(51, 'menu', 'site', 'mvc:storefront.index', 'index', 1, 'admininstrator', 3, '2011-04-09 11:46:28', '2011-04-09 11:46:28', 1, 1, 1),
(52, 'menu', 'site', 'mvc:storefront.index', 'login', 1, 'guest', 1, '2011-04-10 14:53:46', '2011-04-10 14:53:46', 1, 1, 1),
(53, 'menu', 'site', 'mvc:storefront.index', 'logout', 1, 'guest', 1, '2011-04-10 14:53:46', '2011-04-10 14:53:46', 1, 1, 1),
(54, 'menu', 'site', 'mvc:storefront.index', 'login', 1, 'super', 1, '2011-04-10 14:53:46', '2011-04-10 14:53:46', 1, 1, 1),
(55, 'menu', 'site', 'mvc:storefront.index', 'logout', 1, 'super', 1, '2011-04-10 14:53:46', '2011-04-10 14:53:46', 1, 1, 1),
(56, 'menu', 'site', 'mvc:storefront.error', 'deny', 1, 'guest', 1, '2011-04-10 17:40:20', '2011-04-10 17:40:20', 1, 1, 1),
(57, 'menu', 'site', 'mvc:storefront.index', 'login', 1, 'member', 1, '2011-04-10 17:40:20', '2011-04-10 17:40:20', 1, 1, 1),
(58, 'menu', 'site', 'mvc:storefront.index', 'logout', 1, 'member', 1, '2011-04-10 17:40:20', '2011-04-10 17:40:20', 1, 1, 1),
(59, 'menu', 'site', 'mvc:storefront.index', 'login', 1, 'admininstrator', 1, '2011-04-10 17:40:20', '2011-04-10 17:40:20', 1, 1, 1),
(60, 'menu', 'site', 'mvc:storefront.index', 'logout', 1, 'admininstrator', 1, '2011-04-10 17:40:20', '2011-04-10 17:40:20', 1, 1, 1),
(61, 'menu', 'site', 'mvc:storefront.error', 'deny', 1, 'member', 1, '2011-04-17 21:26:15', '2011-04-17 21:26:15', 1, 1, 1),
(62, 'menu', 'site', 'mvc:storefront.error', 'deny', 1, 'admininstrator', 1, '2011-04-17 21:26:15', '2011-04-17 21:26:15', 1, 1, 1),
(63, 'menu', 'site', 'mvc:storefront.error', 'deny', 1, 'super', 1, '2011-04-17 21:26:15', '2011-04-17 21:26:15', 1, 1, 1),
(64, 'menu', 'site', 'mvc:storefront.index', 'photobook-preview', 1, 'guest', 3, '2011-05-21 21:09:30', '2011-05-21 21:09:30', 1, 1, 1),
(65, 'menu', 'site', 'mvc:storefront.index', 'photobook-preview', 1, 'super', 3, '2011-05-21 21:09:30', '2011-05-21 21:09:30', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_category`
--

CREATE TABLE IF NOT EXISTS `admin_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `admin_category`
--

INSERT INTO `admin_category` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Headers', 'Template headers category', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(2, 'Main Body', 'Template main body', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(3, 'Footer', 'Template footers', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(4, 'General', '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(5, 'Menus', '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(6, 'Admin', 'Admin related items', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(7, 'Content', '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(8, 'Design', '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(9, 'Templates', '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(10, 'Indexes', '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(11, 'User Data', 'User related data', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(12, 'Ecommerce', '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(13, 'Configuration', '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(14, 'Blog Items', 'Items belonging to the blog module or related', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(15, 'Web Forms', 'Web Forms', '2011-01-14 02:23:57', '2011-01-14 02:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `admin_content_type`
--

CREATE TABLE IF NOT EXISTS `admin_content_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code` varchar(45) NOT NULL,
  `admin_table_id` int(11) DEFAULT NULL,
  `thumb` varchar(145) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
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

INSERT INTO `admin_content_type` (`id`, `title`, `description`, `code`, `admin_table_id`, `thumb`, `color`, `is_table`, `sequence`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Widgets', '', 'admin_element', 9, '', '134670', 0, 2, '', '2011-01-14 02:23:57', '2011-03-15 01:37:27'),
(2, 'User Defined Contents', '', 'component', 23, '', 'aaaaff', 0, 1, '', '2011-01-14 02:23:57', '2011-03-15 01:36:48'),
(3, 'BreadCrumbs', '', 'menu_crumb', 25, '', 'bf00bf', 0, 4, '', '2011-01-14 02:23:57', '2011-03-15 01:32:19'),
(4, 'Site Menus', '', 'menu', 25, '', '007f3f', 0, 3, '', '2011-01-14 02:23:57', '2011-03-15 01:36:36'),
(5, 'Product Webtree', '', 'ecom_navigation_menu', 49, '', 'd10fdb', 0, 5, '', '2011-01-14 02:23:57', '2011-03-15 01:36:23'),
(6, 'Breadcrumb - Products', '', 'ecom_navigation_menu_crumb', 49, '', '007f3f', 0, 6, '', '2011-01-14 02:23:57', '2011-03-15 01:19:25'),
(7, 'Boiler Plates', '', 'boiler_plate', 37, '', '753e58', 0, 7, '', '2011-01-14 02:23:57', '2011-03-15 01:36:09'),
(8, 'Web Forms', '', 'web_form', 64, '', '', 0, 8, '', '2011-01-14 02:23:57', '2011-03-04 03:35:38');

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
  KEY `admin_state_id_idx` (`admin_state_id`),
  KEY `ecom_tax_id_idx` (`ecom_tax_id`)
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
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_database`
--


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
  `col` int(11) DEFAULT '1',
  `sequence` int(11) DEFAULT '1',
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `admin_dictionary`
--

INSERT INTO `admin_dictionary` (`id`, `title`, `description`, `label`, `row`, `col`, `sequence`, `note`, `created_at`, `updated_at`) VALUES
(1, 'id', '', 'ID', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(2, 'title', '', 'Title', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(3, 'description', '', 'Description', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(4, 'line1', '', 'Address Line 1', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(5, 'line2', '', 'Address Line 2', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(6, 'city', '', 'City', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(7, 'region', '', 'Region', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(8, 'post_code', '', 'Post Code', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(9, 'admin_country_id', '', 'Country', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(10, 'created_at', '', 'Created', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(11, 'updated_at', '', 'Updated', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(12, 'licence_key', '', 'Licence Key', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(13, 'num_site', '', 'Num Site', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(14, 'admin_subsite_id', '', 'Website', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(15, 'code', '', 'Product Code', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(16, 'admin_currency_id', '', 'Currency', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(17, 'rate', '', 'Rate', 1, 1, 1, '', '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(18, 'symbol', '', 'Symbol', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(19, 'position', '', 'Position', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(20, 'label', '', 'Label', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(21, 'filename', '', 'Filename', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(22, 'admin_category_id', '', 'Category', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(23, 'is_hidden', '', 'Hide', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(24, 'is_deleted', '', 'Deleted', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(25, 'admin_table_id', '', 'Table', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(26, 'module', '', 'Module', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(27, 'controller', '', 'Controller', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(28, 'action', '', 'Action', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(29, 'image_file', '', 'Image', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(30, 'root_id', '', 'Root ID', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(31, 'lft', '', 'Lft', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(32, 'rgt', '', 'Rgt', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(33, 'admin_menu_id', '', 'Menu', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(34, 'is_active', '', 'Active', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(35, 'deleted_at', '', 'Deleted', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(36, 'cssid', '', 'Cssid', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(37, 'cssclass', '', 'Cssclass', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(38, 'note', '', 'Note', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(39, 'keyword', '', 'Keyword', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(40, 'licence', '', 'Licence', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(41, 'contact_email', '', 'Contact Email', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(42, 'sales_email', '', 'Sales Email', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(43, 'telephone', '', 'Telephone', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(44, 'fax', '', 'Fax', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(45, 'domain', '', 'Domain', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(46, 'root_dir', '', 'Root Directory', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(47, 'user_id', '', 'User', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(48, 'admin_template_id', '', 'Template', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(49, 'renewal_at', '', 'Renewal At', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(50, 'colour_scheme', '', 'Colour Scheme', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(51, 'created_by', '', 'Author', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(52, 'updated_by', '', 'Editor', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(53, 'name', '', 'Name', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(54, 'is_admin', '', 'Admin', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(55, 'admin_section_id', '', 'Section', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(56, 'sequence', '', 'Sequence', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(57, 'content', '', 'Content', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(58, 'category_id', '', 'Category', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(59, 'version', '', 'Version', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(60, 'page_id', '', 'Page ID', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(61, 'start_at', '', 'Start Date', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(62, 'end_at', '', 'Expiry Date', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(63, 'is_cached', '', 'Use Cache', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(64, 'is_secure', '', 'Secure', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(65, 'slug', '', 'Slug', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(66, 'item', '', 'Page Item', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(67, 'content_type', '', 'Content Type', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(68, 'section_seq', '', 'Sequence', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(69, 'item_seq', '', 'Sequence', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(70, 'firstname', '', 'Firstname', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(71, 'lastname', '', 'Surname', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(72, 'username', '', 'Username', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(73, 'dob_at', '', 'D.O.B', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(74, 'nickname', '', 'Nick Name', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(75, 'gender', '', 'Gender', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(76, 'password', '', 'Password', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(77, 'email', '', 'Email', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(78, 'company', '', 'Company', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(79, 'website', '', 'Website', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(80, 'is_blocked', '', 'Blocked', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(81, 'is_online', '', 'Online', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(82, 'visits', '', 'Visits', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(83, 'admin_salutation_id', '', 'Title', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(84, 'usergroup_id', '', 'User Group', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(85, 'admin_group_id', '', 'Group', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(86, 'address_book_id', 'Contact address', 'Address Book', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(87, 'header_id', 'Header template', 'Header', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(88, 'footer_id', 'Footer template', 'Footer', 1, 1, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(89, 'is_visible', '', 'Visible', 1, 0, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(90, 'row', '', 'Row', 1, 0, 1, '', '2011-01-14 02:23:58', '2011-01-14 02:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_element`
--

CREATE TABLE IF NOT EXISTS `admin_element` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `widget` varchar(45) NOT NULL,
  `admin_category_id` int(11) NOT NULL DEFAULT '1',
  `admin_licence_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_category_id_idx` (`admin_category_id`),
  KEY `admin_licence_id_idx` (`admin_licence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `admin_element`
--

INSERT INTO `admin_element` (`id`, `title`, `description`, `widget`, `admin_category_id`, `admin_licence_id`, `created_at`, `updated_at`) VALUES
(1, 'Mini Basket', 'Interface display a summary ot the items in t', 'Cart~summary', 2, 0, '2011-05-23 19:55:30', '2011-05-23 19:55:30'),
(2, 'Main Menu', '', 'Menu~main-menu', 5, 1, '2011-05-23 19:55:30', '2011-05-23 19:55:30'),
(3, 'Breadcrumb', '', 'Menu~breadcrumb', 4, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(4, 'Login', 'Login form', 'Form~login', 15, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(5, 'Latest News', 'Latest news and articles', 'Index~latestnews', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(6, 'Layout Tools', 'Layout management tools visible when logged i', 'Layout~tool', 6, 0, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(7, 'Latest Blog Posts', 'Latest Blog Posts', 'Post~latestpost', 14, 3, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(8, 'Category Search', '', 'Search~index', 4, 2, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(9, 'Product Breadcrumb', 'Bread crumb showing web tree trail', 'Menu~productcrumb', 4, 0, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(10, 'Shopping Cart', '', 'Cart~basket', 12, 0, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(11, 'Product Detail', '', 'Search~product', 12, 4, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(12, 'Branch Search', '', 'Search~branch', 12, 4, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(13, 'Access Denied', '', 'Error~deny', 4, 0, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(14, 'Feature Banner', 'Display featured items in a banner rotator as', 'Index~banner', 1, 0, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(15, 'Featured Items', 'Display featured products or items. Informati', 'Index~feature', 9, 0, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(16, 'Social Media', 'Social Media Icons', 'Index~media', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(17, 'Search', '', 'Index~search', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(18, 'Blog Post Display', '', 'Post~detail', 14, 3, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(19, 'Post Archives', 'Achives of blog posts', 'Post~archive', 14, 3, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(20, 'Post Category', 'Blog post category', 'Post~category', 14, 3, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(21, 'Registration Form', '', 'Form~register', 15, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(22, 'Slide Show', 'Simple slide show widget. Images are looked u', 'Image~slideshow', 2, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(23, 'Contact / Inquiry Form', 'Contact us form or web inquiry form for feedb', 'Form~contact', 15, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(24, 'Event Summary', 'Event Summary', 'Index~latestevents', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(25, 'Carousel', 'Image carousel display images in a slide show', 'Image~carousel', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(26, 'Google Static Map', '', 'Google~staticmap', 4, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(27, 'And this social media', 'And this social media icons', 'Media~andthis', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(28, 'Reviews', 'Reviews and comments by clients about particular products and services', 'Post~review', 1, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(29, 'List All Reviews', 'List all comments and reviews made on products and services. This widget is different from the blog comments.', 'post~list-comments', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(30, 'Photobook Albums', 'Displays photobook albums, usually on the portfolio page.', 'portfolio~photobook', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(31, 'Event Types', 'List event types for filtering photobook albums', 'portfolio~list-event-type', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(32, 'Mini Basket', '', 'cart~summary', 12, 5, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(33, 'Open ID Login', 'Login using open ID', 'form~open-id-login', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(34, 'User Details', '', 'user~my-details', 11, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(35, 'Standard Site Search', '', 'Search~standard', 2, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(36, 'Facebook Twitter Share Conter', '', 'media~share-counter', 7, 1, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(37, 'Paypal Paynow Button', 'Paypal paynow button', 'paypal~paynow', 12, 5, '2011-05-23 19:55:31', '2011-05-23 19:55:31'),
(38, 'Order Confirmation', '', 'cart~confirmation', 12, 5, '2011-05-23 23:33:38', '2011-05-23 23:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE IF NOT EXISTS `admin_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
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
  `description` varchar(150) DEFAULT NULL,
  `licence_key` varchar(45) NOT NULL DEFAULT 'FREE',
  `price` float(18,2) DEFAULT '0.00',
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
(1, 'CMS', '', 'FREE', 0.00, '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(2, 'Admin', '', 'FREE2', 0.00, '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(3, 'Blog', '', 'Blog', 12.50, '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(4, 'Email Marketing', '', 'MAILER', 85.00, '2011-01-14 02:23:57', '2011-01-14 02:23:57'),
(5, 'Ecommerce', '', 'SHOP', 0.00, '2011-01-14 02:23:57', '2011-01-14 02:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `m_module` varchar(45) NOT NULL DEFAULT 'storefront',
  `m_controller` varchar(45) NOT NULL DEFAULT 'index',
  `sequence` int(11) DEFAULT '1',
  `m_action` varchar(45) DEFAULT 'index',
  `m_route` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `title`, `description`, `label`, `m_module`, `m_controller`, `sequence`, `m_action`, `m_route`, `image_file`, `is_label`, `is_visible`, `created_at`, `updated_at`, `root_id`, `lft`, `rgt`, `level`) VALUES
(1, 'Admin', '', 'Admin', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-17 11:29:32', 1, 1, 48, 0),
(2, 'Cms', 'Cms menus', 'Content Management', 'cms', 'index', 0, 'index', NULL, 'cms.png', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:35:23', 2, 1, 50, 0),
(3, 'Blog', 'Blog menus', 'Blog Menu', 'blog', 'index', 0, 'index', NULL, 'blog.png', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 3, 1, 14, 0),
(4, 'eCommerce', 'eCom menus', 'eCommerce', 'ecom', 'index', 0, 'index', NULL, 'ecommerce.png', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 1, 22, 0),
(5, 'Email', 'Email menus', 'Email Menu', 'email', 'index', 0, 'index', NULL, 'email.png', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 5, 1, 2, 0),
(6, 'Tools', '', 'Tools', 'admin', 'index', 1, 'index', NULL, '/golive/userfiles/NIKE-10.jpg', 0, 1, '2011-01-14 02:23:59', '2011-03-17 11:29:32', 1, 16, 33, 1),
(7, 'System', '', 'System', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-17 11:29:32', 1, 34, 45, 1),
(8, 'Pages', '', 'Pages', 'admin', 'index', 0, 'page', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 00:12:39', 1, 5, 6, 2),
(9, 'Design', '', 'Design', 'admin', 'index', 1, 'page', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 00:12:39', 1, 4, 15, 1),
(10, 'List Tables', '', 'List Tables', 'admin', 'grid', 3, 'table', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-16 23:34:50', 1, 18, 19, 3),
(11, 'Menus', '', 'Menus', 'admin', 'index', 1, 'siteaccess', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 00:12:39', 1, 7, 12, 2),
(12, 'Category', '', 'Category', 'blog', 'index', 6, 'category', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 3, 3, 4, 2),
(13, 'Menus', '', 'Menus', 'cms', 'menu', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 02:33:26', 2, 5, 12, 2),
(14, 'Web Pages', '', 'Web Pages', 'cms', 'design', 0, 'page', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 02:33:26', 2, 13, 14, 2),
(15, 'Create Models from Schema', '', 'Create Models from Schema', 'null', 'null', 0, 'index', NULL, '', 0, 0, '2011-01-14 02:23:59', '2011-02-21 01:38:59', 3, 11, 12, 2),
(16, 'Help', '', 'Help', 'cms', 'admin', 0, 'help', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:35:23', 2, 46, 49, 1),
(17, 'Help', 'help menus', 'Help', 'help', 'index', 0, 'index', NULL, 'help.png', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 17, 1, 12, 0),
(18, 'Design', 'Search for help information', 'Design', 'help', 'search', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 17, 2, 5, 1),
(19, 'Help', 'Knowledge center, help and documentation home', 'Help', 'admin', 'help', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-17 11:29:32', 1, 46, 47, 1),
(20, 'Search', 'Perform help search', 'Search', 'admin', 'help', 0, 'search', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 17, 6, 11, 1),
(21, 'Users', '', 'Users', 'cms', 'manage', 1, 'user', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:34:34', 2, 25, 30, 2),
(22, 'Licencing', '', 'Licencing', 'admin', 'index', 1, 'registry', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-17 11:29:32', 1, 36, 37, 3),
(23, 'Frontend Tools', 'Front end layout design tools', 'Frontend Tools', 'admin', 'layout', 1, 'tool', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-17 00:08:28', 1, 13, 14, 2),
(24, 'Database', 'View existing databases, schema and informati', 'Database', 'admin', 'database', 0, 'diff', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-17 11:29:32', 1, 17, 24, 2),
(25, 'Layout', '', 'Layout', 'help', 'design', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 17, 3, 4, 2),
(26, 'Keyword', '', 'Keyword', 'help', 'search', 0, 'keyword', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 17, 7, 8, 2),
(27, 'Help Types', '', 'Help Types', 'help', 'search', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 17, 9, 10, 2),
(28, 'Layout', '', 'Layout', 'admin', 'index', 3, 'menu', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 00:12:39', 1, 10, 11, 3),
(29, 'Layout', '', 'Layout', 'cms', 'menu', 1, 'frontend', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-20 23:39:13', 2, 6, 7, 3),
(30, 'Trees', '', 'Trees', 'ecom', 'menu', 1, 'product-navigation', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-22 19:20:45', 4, 5, 10, 2),
(31, 'Manage', '', 'Manage', 'ecom', 'stock', 1, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 18, 19, 1),
(32, 'Products', '', 'Products', 'ecom', 'stock', 1, 'product', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 3, 4, 2),
(33, 'Category', '', 'Category', 'ecom', 'stock', 2, 'category', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 11, 12, 2),
(34, 'Settings', '', 'Settings', 'ecom', 'index', 1, 'setting', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 20, 21, 1),
(35, 'Design', '', 'Design', 'ecom', 'index', 1, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 14, 17, 1),
(36, 'Attributes', '', 'Attributes', 'ecom', 'index', 2, 'template', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 15, 16, 2),
(37, 'Access Control', '', 'Access Control', 'admin', 'index', 2, 'adminaccess', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 00:12:39', 1, 8, 9, 3),
(38, 'Access Control', '', 'Access Control', 'cms', 'menu', 1, 'siteaccess', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-20 23:39:13', 2, 8, 9, 3),
(39, 'Access Control', '', 'Access Control', 'ecom', 'menu', 2, 'ecomaccess', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 8, 9, 3),
(40, 'Design', '', 'Design', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 02:33:26', 2, 2, 19, 1),
(41, 'Catalog', '', 'Catalog', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 4, 2, 13, 1),
(42, 'Posts', '', 'Posts', 'blog', 'index', 0, 'addpost', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 3, 5, 6, 2),
(43, 'Roles', '', 'Roles', 'cms', 'admin', 1, 'setting', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:34:34', 2, 26, 27, 3),
(44, 'Layout', '', 'Layout', 'ecom', 'menu', 1, 'product-navigation', NULL, '/photography/media/image/flikr.png', 0, 1, '2011-01-14 02:23:59', '2011-02-22 19:25:14', 4, 6, 7, 3),
(45, 'System', '', 'System', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:35:23', 2, 42, 45, 1),
(46, 'Settings', '', 'Settings', 'cms', 'admin', 1, 'setting', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:35:23', 2, 43, 44, 2),
(47, 'View Schema', '', 'View Schema', 'admin', 'database', 5, 'schema-view', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-17 11:29:32', 1, 26, 27, 3),
(48, 'Featured Items', '', 'Featured Items', 'cms', 'design', 2, 'feature', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 02:33:26', 2, 15, 16, 2),
(49, 'Web Forms', '', 'Web Forms', 'cms', 'design', 1, 'form', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-02-21 02:33:26', 2, 17, 18, 2),
(50, 'Design', '', 'Design', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 3, 2, 9, 1),
(51, 'Manage', '', 'Manage', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 3, 10, 13, 1),
(52, 'Comments', '', 'Comments', 'blog', 'index', 1, 'comment', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-01-14 02:23:59', 3, 7, 8, 2),
(53, 'Manage', '', 'Manage', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:35:23', 2, 20, 41, 1),
(54, 'Events', '', 'Events', 'cms', 'manage', 1, 'event', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:34:34', 2, 22, 23, 3),
(55, 'News & Events', '', 'News & Events', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:34:34', 2, 21, 24, 2),
(56, 'Images', '', 'Images', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:34:34', 2, 31, 34, 2),
(57, 'slideshow', '', 'slideshow', 'admin', 'index', 0, 'index', NULL, '', 0, 1, '2011-01-14 02:23:59', '2011-03-27 18:34:34', 2, 32, 33, 3),
(58, 'Tools', NULL, 'Tools', 'admin', 'grid', 0, 'index', NULL, NULL, 0, 1, '2011-01-27 19:08:34', '2011-03-17 11:29:32', 1, 28, 29, 3),
(59, 'Schema', 'View schema files in yml format', 'Schema', 'admin', 'database', 1, 'schema-view', NULL, '', 0, 1, '2011-01-27 19:08:55', '2011-03-17 11:29:32', 1, 25, 30, 2),
(60, 'System Information', '', 'System Information', 'admin', 'index', 1, 'sys-info', NULL, '', 0, 1, '2011-01-27 19:09:16', '2011-03-17 11:29:32', 1, 40, 41, 3),
(61, 'Manage Tables', '', 'Manage Tables', 'admin', 'database', 0, 'manage-table', NULL, '', 0, 1, '2011-01-27 19:09:38', '2011-03-17 11:29:32', 1, 22, 23, 3),
(62, 'Registry', '', 'Registry', 'cms', 'manage', 1, 'user', NULL, '', 0, 1, '2011-01-29 13:34:15', '2011-03-27 18:34:34', 2, 28, 29, 3),
(65, 'Setup', NULL, 'Setup', 'admin', 'grid', 1, 'index', NULL, NULL, 0, 1, '2011-02-21 02:33:26', '2011-02-21 02:33:30', 2, 10, 11, 3),
(66, 'Migrations', '', 'Migrations', 'admin', 'grid', 1, 'index', NULL, '', 0, 1, '2011-02-28 02:00:34', '2011-03-17 11:29:32', 1, 31, 32, 2),
(67, 'PHP Info', '', 'PHP Info', 'admin', 'grid', 1, 'index', NULL, '', 0, 1, '2011-03-17 00:12:32', '2011-03-17 11:29:32', 1, 42, 43, 3),
(68, 'Admin', NULL, 'Admin', 'admin', 'grid', 1, 'index', NULL, NULL, 0, 1, '2011-03-17 10:48:12', '2011-03-17 11:29:32', 1, 35, 38, 2),
(69, 'Information', NULL, 'Information', 'admin', 'grid', 1, 'index', NULL, NULL, 0, 1, '2011-03-17 10:48:24', '2011-03-17 11:29:32', 1, 39, 44, 2),
(70, 'Backups', NULL, 'Backups', 'admin', 'grid', 1, 'index', NULL, NULL, 0, 1, '2011-03-17 10:59:29', '2011-03-17 11:01:04', 1, 20, 21, 3),
(71, 'Gallery', '', 'Gallery', 'cms', 'manage', 1, 'index', NULL, '', 0, 1, '2011-03-27 18:34:59', '2011-03-27 18:39:46', 2, 35, 40, 2),
(72, 'Portfolio', '', 'Portfolio', 'cms', 'manage', 1, 'portfolio', NULL, '', 0, 1, '2011-03-27 18:35:07', '2011-03-27 18:56:37', 2, 36, 37, 3),
(73, 'Reviews & Comments', '', 'Reviews & Comments', 'cms', 'manage', 1, 'review', NULL, '', 0, 1, '2011-03-27 18:35:23', '2011-03-27 18:56:29', 2, 38, 39, 3);

-- --------------------------------------------------------

--
-- Table structure for table `admin_module`
--

CREATE TABLE IF NOT EXISTS `admin_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `code` varchar(45) NOT NULL,
  `thumb` varchar(145) NOT NULL,
  `image_file` varchar(45) NOT NULL,
  `admin_menu_id` int(11) NOT NULL,
  `admin_licence_id` int(11) NOT NULL,
  `sequence` int(11) DEFAULT '1',
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_menu_id_idx` (`admin_menu_id`),
  KEY `admin_licence_id_idx` (`admin_licence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `admin_module`
--

INSERT INTO `admin_module` (`id`, `title`, `description`, `label`, `code`, `thumb`, `image_file`, `admin_menu_id`, `admin_licence_id`, `sequence`, `content`, `created_at`, `updated_at`) VALUES
(1, 'CMS', 'Content Management module', 'Content Manager', 'cms', '/backend/images/icons/cms.png', '/backend/images/graphics/cms.png', 2, 1, 2, '<div class="admin-content">\n	<img alt="" src="/golive/media/image/graphics/original/web_design_graphic.gif" style="width: 300px; height: 300px; float: right;" />RhemaSys Content Management suites comprise functionalities and subsystems that enables site adminstrators manage their sites contents with ease.\n	<p>\n		The functionalies provided are easy to use with help provided to help adminstrators make maximum use of the tool provided without the need for any web programming knowledge or skill.</p>\n	<p>\n		The functionalities and tools provided include the following:</p>\n	<ul>\n		<li>\n			User defined content generation and management</li>\n		<li>\n			Unlimited page creation</li>\n		<li>\n			Page Templating</li>\n		<li>\n			Caching and Site Perfomance Improvements</li>\n		<li>\n			Multi-level Menu Generation and Access Control</li>\n	</ul>\n</div>\n', '2011-01-26 01:37:52', '2011-02-24 02:08:20'),
(2, 'Blog', '', 'Comments and Reviews', 'blog', '/backend/images/icons/blog.png', '/backend/images/graphics/blog.png', 3, 3, 4, '', '2011-01-26 01:37:52', '2011-01-26 01:37:52'),
(3, 'Email', '', 'Email Marketing', 'email', '/backend/images/icons/email.png', '/backend/images/graphics/email.png', 5, 3, 5, '', '2011-01-26 01:37:52', '2011-02-20 15:29:35'),
(4, 'Admin', '', 'Super Adminstrator', 'admin', '/backend/images/icons/admin.png', '/backend/images/graphics/admin.png', 1, 2, 1, '', '2011-01-26 01:37:52', '2011-01-26 01:37:52'),
(5, 'eCommerce', '', 'eCommerce', 'ecom', '/backend/images/icons/cart.png', '/backend/images/graphics/cart.png', 4, 5, 3, '<p>\n	&nbsp;</p>', '2011-01-26 01:37:52', '2011-01-26 01:37:52'),
(6, 'Users', '', 'User Manager', 'help', '/backend/images/icons/help.png', '/backend/images/graphics/help.png', 17, 6, 1, '', '2011-01-26 01:37:52', '2011-01-26 01:37:52'),
(7, 'Help', 'Help generation module', 'Help', 'help', '/backend/images/icons/help.png', '/backend/images/graphics/help.png', 17, 2, 6, '', '2011-01-26 01:37:52', '2011-01-26 01:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `admin_section`
--

CREATE TABLE IF NOT EXISTS `admin_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
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
(1, 'Banner', 'Website banner usually located in the header ', 'banner', 'sxnHeadBanner', '', 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(2, 'Top Bar', 'Navigation menus located at the very top of t', 'sxnHeaderTopBar', '', '', 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(3, 'SearchBar', 'Search input field and button', 'search-bar', 'sxnSiteSearch', '', 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(4, 'Main Menu', 'Main navigation menus', 'main-menu', 'divMainMenu', '', 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(5, 'First of 3 sections', '', 'sxn3a', 'sxnMainFirstThird', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(6, 'Second of 3 sections', '', 'sxn3b', 'sxnMainMiddleThird', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(7, 'Third of 3 sections', '', 'sxn3c', 'sxnMainLastThird', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(8, 'Large Left ', '', 'large-left', 'sxnMainLeftLarge', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(9, 'Small Right', '', 'small-right', 'sxnMainRightSmall', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(10, 'Header - Large Left', '', 'header-left-large', 'sxnHeadLeftLarge', '', 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(11, 'Header - Small Right', '', 'header-right-small', 'sxnHeadRightSmall', '', 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(12, 'Seperator', '', 'seperator', 'seperator', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(13, 'Blog Main Section', '', 'blog-main', 'sxnBlogMain', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(14, 'Blog - First Right', '', 'blog-right-first', 'sxnBlogRightFirst', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(15, 'Blog Right Last', '', 'blog-right-last', 'sxnBlogRightLast', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(16, 'Top', '', 'main-top', 'sxnMainTop', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(17, 'Main Left', '', 'main-left', 'sxnMainLeftHalf', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(18, 'Main Right', '', 'main-right', 'sxnMainRightHalf', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(19, 'Main Bottom', '', 'main-bottom', 'sxnMainBottom', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(20, 'Small Left', '', 'small-left', 'sxnMainLeftSmall', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(21, 'Large Right', '', 'large-right', 'sxnMainRightLarge', '', 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(22, 'Top Navigation', 'Top Navigation Menu', 'top-navigation', 'divTopMenu', '', 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(23, 'Bottom Navigation', '', 'bottom-nav', 'divBottomNav', '', 3, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(24, 'Site Logo', '', 'site-logo', 'sxnLogo', '', 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(25, 'Span 1', 'Full width ', '', 'sxnSpanOne', '', 7, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(26, 'Span 2', '', '', 'sxnSpanTwo', '', 7, '2011-01-14 02:23:58', '2011-01-14 02:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_setting`
--

CREATE TABLE IF NOT EXISTS `admin_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `config_key` varchar(145) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `country` varchar(100) DEFAULT NULL,
  `ecom_tax_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecom_tax_id_idx` (`ecom_tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_state`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_subsite`
--

CREATE TABLE IF NOT EXISTS `admin_subsite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `keyword` text,
  `contact_email` varchar(45) NOT NULL,
  `sales_email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) NOT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `domain` varchar(45) NOT NULL,
  `root_dir` varchar(45) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '0',
  `ssid` int(4) NOT NULL DEFAULT '1',
  `renewal_at` datetime DEFAULT NULL,
  `colour_scheme` varchar(45) DEFAULT 'default',
  `address_book_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `address_book_id_idx` (`address_book_id`),
  KEY `template_id_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `admin_subsite`
--

INSERT INTO `admin_subsite` (`id`, `title`, `description`, `keyword`, `contact_email`, `sales_email`, `telephone`, `fax`, `domain`, `root_dir`, `user_id`, `template_id`, `is_active`, `ssid`, `renewal_at`, `colour_scheme`, `address_book_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Rhema Webdesign', 'Design arm of Rhema Group', 'rhemastudio,. webdesign ', 'info@rhema-webdesign.com', '', '07824312823', '', 'rhema-webdesign.com', 'golive', 1, 0, 1, 1, NULL, 'summer', NULL, '2011-01-25 22:59:33', '2011-01-25 22:59:33', 1, 1),
(2, 'BlackStarr Commodities', 'Founded in 2008, BlackStarr Commodities Limited was formed in 2008 as an independent brokerage services firm specialising in the global flow of natura', 'Blackstarr, brokerage, consultancy, management, natural resources, diamonds, oil, gas, coal, metals, minerals, agricultural products', 'simphiwe_kunene@msn.com', 'simphiwe_kunene@msn.com', '01213772368', '01213571001', 'blackstarrcom.com', 'en', 2, 4, 0, 1, NULL, 'default', NULL, '2011-01-25 22:59:34', '2011-01-25 22:59:34', 1, 1),
(3, 'Established Word Test', 'Test Site', '', 'info@establishedword.com', 'info@establishedword.com', '00', '', 'establishedword.com', 'test', 3, 0, 0, 1, NULL, 'default', NULL, '2011-01-25 22:59:34', '2011-01-25 22:59:34', 1, 1),
(4, 'Blackstarr Test Site', '', '', 'test', '', 'test', '', 'rhemasys-dev', 'en', 1, 0, 0, 1, NULL, '', NULL, '2011-01-25 22:59:35', '2011-01-25 22:59:35', 1, 1),
(5, 'Destiny Christian Centre', 'Join us every sunday to worship God, increase in faith through powerful biblical teaching and experience the unfailing love of God at Novotal, London ', 'destiny chrsitian centre, jerome anekwe, ruth, christian, church london', 'info@destinychristiancentre.org', 'info@destinychristiancentre.org', '000', '', 'destinychristiancentre.org', 'main', 0, 4, 0, 1, NULL, 'default', NULL, '2011-01-25 22:59:35', '2011-01-25 22:59:35', 1, 1),
(6, 'Fervent Life MInistries', 'Fervent life ministries UK an oasis of love, hope and restoration not lagging in diligence, fervent in spirit, serving the lord', 'Fervent life, church, cardiff, john luke', 'info@ferventlifeministries.org', 'info@ferventlifeministries.org', '000', '', 'ferventlifeministries.org', 'ferventlife', 0, 4, 0, 1, NULL, 'default', NULL, '2011-01-25 22:59:36', '2011-01-25 22:59:36', 1, 1),
(7, 'Special Words', '', 'fridge margnets, flyers, t-shirts, ecards, stationeries', 'info@special-words.com', 'info@special-words.com', '000', '', 'special-words.com', 'specialwords', 0, 0, 0, 1, NULL, 'default', NULL, '2011-01-25 22:59:37', '2011-01-25 22:59:37', 1, 1),
(8, 'Rhemastudio Photography', 'The is the development site for rhema studio photography', 'rhemastudio, phptpgraphy', 'info@rhemastudio.com', 'info@rhemastudio.com', '080785126985', '', 'rhemastu-dev', 'photography', 1, 4, 1, 1, NULL, 'summer', 1, '2011-01-25 22:59:37', '2011-01-25 22:59:37', 1, 1),
(9, 'Kingdom Light Ministry', '', '', 'info@kingdomlightministry.org', 'info@kingdomlightministry.org', '000', '', 'kingdomlightministry.org', 'kingdom', 0, 4, 0, 1, NULL, 'default', NULL, '2011-01-25 22:59:38', '2011-01-25 22:59:38', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_subsite_licence`
--

CREATE TABLE IF NOT EXISTS `admin_subsite_licence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_licence_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_licence_id_idx` (`admin_licence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `admin_subsite_licence`
--

INSERT INTO `admin_subsite_licence` (`id`, `admin_licence_id`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 2, 1, '2011-01-26 01:38:45', '2011-01-26 01:38:45', NULL, 8),
(2, 3, 1, '2011-01-26 01:38:45', '2011-01-26 01:38:45', NULL, 8),
(3, 1, 1, '2011-01-26 01:38:45', '2011-01-26 01:38:45', NULL, 8),
(4, 4, 1, '2011-01-26 01:38:45', '2011-01-26 01:38:45', NULL, 8),
(5, 5, 1, '2011-02-17 04:39:36', '2011-02-17 04:39:39', NULL, 8),
(6, 2, 1, '2011-03-17 13:27:40', '2011-03-17 13:44:19', '2011-03-17 13:44:19', 8),
(7, 4, 1, '2011-03-17 13:30:26', '2011-03-17 13:30:26', NULL, 2),
(8, 5, 1, '2011-03-17 13:44:29', '2011-03-17 14:01:56', '2011-03-17 14:01:56', 8),
(9, 3, 1, '2011-03-17 14:01:56', '2011-03-17 14:01:56', NULL, 2),
(10, 2, 1, '2011-03-29 19:56:08', '2011-03-29 19:56:08', NULL, 1),
(11, 3, 1, '2011-03-29 19:56:08', '2011-03-29 19:56:08', NULL, 1),
(12, 1, 1, '2011-03-29 19:56:08', '2011-03-29 19:56:08', NULL, 1),
(13, 5, 1, '2011-03-29 19:56:08', '2011-03-29 19:56:08', NULL, 1),
(14, 4, 1, '2011-03-29 19:56:08', '2011-03-29 19:56:08', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE IF NOT EXISTS `admin_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `title`, `description`, `name`, `is_admin`, `is_hidden`, `note`, `admin_category_id`, `admin_database_id`, `created_at`, `updated_at`) VALUES
(1, 'Address Book', '', 'address_book', 0, 0, '', 11, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(2, 'Data dictionary index', '', 'admin__model__admin_dictionary_index', 0, 1, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(3, 'Component version table', '', 'admin__model__component_version', 0, 1, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(4, 'Category - Admin', '', 'admin_category', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(5, 'Sites -  Control ', '', 'admin_control', 0, 1, '', 3, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(6, 'User Inquiry', '', 'inquiry', 0, 0, '', 11, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(7, 'Currency', '', 'admin_currency', 0, 0, '', 4, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(8, 'Data Dictionary', '', 'admin_dictionary', 0, 0, '', 7, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(9, 'Page Elements', '', 'admin_element', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(10, 'Admin Groups', '', 'admin_group', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(11, 'Tax Rates', '', 'ecom_tax', 0, 0, '', 12, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(12, 'Menus - Admin', '', 'admin_menu', 0, 0, '', 5, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(13, 'Modules', '', 'admin_module', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(14, 'Site-Module Index', '', 'admin_module_subsite', 0, 1, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(15, 'Page Headers', '', 'page_header', 0, 0, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(16, 'Acl Rules', '', 'admin_acl', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(17, 'Sections', '', 'admin_section', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(18, 'Tables', '', 'admin_table', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(19, 'Page Templates', '', 'admin_template', 0, 0, '', 8, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(20, 'Template-Section Index', '', 'admin_template_section', 0, 1, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(21, 'Events', '', 'event', 0, 0, '', 4, 2, '2011-01-14 02:23:58', '2011-02-21 23:00:58'),
(22, 'Page Contents', '', 'component', 0, 0, '', 7, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(23, 'Doctrine Index ', '', 'doctrine__record__abstract', 0, 1, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(24, 'Menus - Front End', '', 'menu', 0, 0, '', 5, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(25, 'Page Layout Index', '', 'page_layout', 0, 1, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(26, 'Roles - User', '', 'role', 0, 0, '', 11, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(27, 'Salutations', '', 'salutation', 0, 0, '', 11, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(28, 'Sites -  List', '', 'admin_subsite', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(29, 'Users', '', 'user', 0, 0, '', 11, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(30, 'User-Address Index', '', 'user_address', 0, 1, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(31, 'User-Subsite Index', '', 'user_subsite', 0, 1, '', 0, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(32, 'User Groups', '', 'usergroup', 0, 0, '', 11, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(33, 'Pages', 'Web pages', 'page', 0, 0, '', 7, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(34, 'Category - User', '', 'category', 0, 0, '', 11, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(35, 'Databases', '', 'admin_database', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(36, 'Boiler Plates', '', 'boiler_plate', 0, 0, '', 7, 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(37, 'Help category', '', 'category', 0, 0, '', 4, 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(38, 'Help Documents', '', 'Help Documents', 0, 0, '', 7, 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(39, 'Help Fields', '', 'field', 0, 0, '', 7, 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(40, 'Help Templates', '', 'template', 0, 0, '', 4, 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(41, 'template_boiler_plate', '', 'template_boiler_plate', 0, 1, '', 1, 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(42, 'template_field', '', 'template_field', 0, 1, '', 1, 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(43, 'Help Types', '', 'type', 0, 0, '', 8, 1, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(44, 'Site Templates', '', 'template', 0, 0, '', 9, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(45, 'Payment Methods', '', 'ecom_payment_method', 0, 0, '', 12, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(46, 'Product Category', '', 'ecom_category', 0, 0, '', 12, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(47, 'Web Trees', 'Product navigation web trees', 'ecom_navigation_menu', 0, 0, '', 12, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(48, 'Licence Keys', 'Licence', 'admin_licence', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(49, 'Subsite Licences', '', 'admin_subsite_licence', 0, 0, '', 6, 2, '2011-01-14 02:23:58', '2011-01-14 02:23:58'),
(50, 'Delivery Methods', '', 'ecom_delivery_method', 0, 0, '', 12, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(51, 'Event Types', '', 'event_type', 0, 0, '', 7, 2, '2011-01-14 02:23:59', '2011-03-18 02:35:28'),
(52, 'Portfolio Types', 'Different portfolio types e.g. website, photobooks, ablus, designs etc', 'portfolio_type', 0, 0, '', 7, 2, '2011-01-14 02:23:59', '2011-03-26 12:27:04'),
(53, 'Products', '', 'ecom_product', 0, 0, '', 12, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(54, 'Product-Category Index', '', 'ecom_product_category', 0, 0, '', 12, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(55, 'Display Templates', 'User defined template allowing admintrators s', 'ecom_display_template', 0, 0, '', 12, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(56, 'Category Template', 'User defined template allowing admintrators s', 'ecom_category_template', 0, 0, '', 12, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(57, 'Display Attributes', 'Admin defined attributes for products and pro', 'ecom_attribute', 0, 0, '', 12, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(58, 'Template Display Types', 'List of all possible attributes that can be d', 'ecom_display_type', 0, 0, '', 12, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(59, 'Page Footers', '', 'page_footer', 0, 0, '', 3, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(60, 'Featured Items', '', 'featured', 0, 0, '', 7, 2, '2011-01-14 02:23:59', '2011-01-14 02:23:59'),
(61, 'Content Types', '', 'admin_content_type', 0, 0, '', 6, 2, '2011-01-14 02:23:59', '2011-03-13 13:44:37'),
(62, 'Portfolio', 'Web forms', 'portfolio', 0, 0, '', 7, 2, '2011-01-14 02:23:59', '2011-03-18 02:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `admin__model__admin_dictionary_index`
--

CREATE TABLE IF NOT EXISTS `admin__model__admin_dictionary_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`),
  KEY `admin__model__admin_dictionary_index_id_admin_dictionary_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin__model__admin_dictionary_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin__model__component_index`
--

CREATE TABLE IF NOT EXISTS `admin__model__component_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin__model__component_index`
--

INSERT INTO `admin__model__component_index` (`keyword`, `field`, `position`, `id`) VALUES
('118px', 'content', 19, 18),
('39', 'content', 13, 20),
('395px', 'content', 17, 18),
('47px', 'content', 24, 17),
('75px', 'content', 26, 17),
('alt', 'content', 4, 18),
('alt', 'content', 13, 17),
('annotated', 'content', 20, 20),
('arrow', 'content', 9, 17),
('arrow', 'content', 20, 17),
('arrow', 'title', 4, 17),
('blockquote', 'content', 1, 20),
('blockquote', 'content', 28, 20),
('cannot', 'content', 25, 20),
('class', 'content', 7, 17),
('class', 'content', 32, 17),
('class', 'content', 41, 17),
('class', 'content', 46, 17),
('class', 'content', 53, 17),
('contact', 'content', 3, 19),
('contact', 'title', 0, 19),
('curved', 'content', 8, 17),
('curved', 'content', 19, 17),
('curved', 'title', 3, 17),
('digg', 'content', 55, 17),
('digitally', 'content', 10, 20),
('express', 'content', 26, 20),
('follow', 'content', 57, 17),
('golive', 'content', 6, 18),
('graphics', 'content', 9, 18),
('graphics', 'content', 17, 17),
('h1', 'content', 1, 19),
('h1', 'content', 6, 19),
('height', 'content', 18, 18),
('height', 'content', 25, 17),
('icons', 'content', 33, 17),
('id', 'content', 2, 17),
('image', 'content', 8, 18),
('image', 'content', 16, 17),
('img', 'content', 3, 18),
('img', 'content', 12, 17),
('information', 'title', 2, 19),
('line', 'title', 1, 20),
('logo', 'content', 13, 18),
('logo', 'title', 1, 18),
('mastered', 'content', 11, 20),
('media', 'content', 4, 17),
('media', 'content', 7, 18),
('media', 'content', 15, 17),
('million', 'content', 17, 20),
('p', 'content', 1, 18),
('p', 'content', 23, 18),
('personalised', 'content', 18, 20),
('photobook', 'content', 23, 20),
('photograph', 'content', 4, 20),
('photography', 'content', 12, 18),
('png', 'content', 14, 18),
('png', 'content', 21, 17),
('rhema', 'content', 4, 19),
('rhema', 'content', 11, 18),
('site', 'title', 0, 18),
('social', 'content', 3, 17),
('socialiase', 'title', 1, 17),
('socialise', 'content', 49, 17),
('span', 'content', 45, 17),
('span', 'content', 50, 17),
('span', 'content', 52, 17),
('span', 'content', 61, 17),
('src', 'content', 5, 18),
('src', 'content', 14, 17),
('style', 'content', 15, 18),
('style', 'content', 22, 17),
('subtitle', 'content', 54, 17),
('tag', 'title', 0, 20),
('text', 'content', 42, 17),
('thousand', 'content', 8, 20),
('title', 'content', 47, 17),
('webdesign', 'content', 5, 19),
('width', 'content', 16, 18),
('width', 'content', 23, 17),
('words', 'content', 9, 20),
('words', 'content', 24, 20),
('worth', 'content', 6, 20),
('worth', 'content', 15, 20);

-- --------------------------------------------------------

--
-- Table structure for table `admin__model__help_document_index`
--

CREATE TABLE IF NOT EXISTS `admin__model__help_document_index` (
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`keyword`,`field`,`position`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin__model__help_document_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `blog_category`
--


-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE IF NOT EXISTS `blog_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(55) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `comment` text NOT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `rating` decimal(4,2) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `blog_comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE IF NOT EXISTS `blog_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `excerpt` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `blog_category_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_sluggable_idx` (`slug`),
  KEY `blog_category_id_idx` (`blog_category_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `role_id_idx` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `blog_post`
--


-- --------------------------------------------------------

--
-- Table structure for table `blog_post_comment`
--

CREATE TABLE IF NOT EXISTS `blog_post_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_post_id` int(11) DEFAULT NULL,
  `blog_comment_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_id_idx` (`blog_post_id`),
  KEY `blog_comment_id_idx` (`blog_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `blog_post_comment`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'General', '', '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1),
(2, 'Images', '', '2011-05-04 21:29:24', '2011-05-15 23:36:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE IF NOT EXISTS `component` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `content` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_idx` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`id`, `title`, `description`, `content`, `category_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `admin_subsite_id`) VALUES
(1, 'About Us', 'About Rhema Webdesign', '<h1>\n	About [site-name]</h1>\n<blockquote>\n	We aim is to leave a lasting impression in the hearts and minds of our clients giving everyone the opportunity to relive cherished moments day after day. Who We Are</blockquote>\n<p>\n	Based in London, [site-name] provides matchless photobook design, photographic restoration and enhancement, image manipulation to clients worldwide. At [site-name] we are friendly, highly motivated and make use of emergent technology,industry standard software and the internet to provide excellent services to businesses and the public alike.</p>\n<h2>\n	Our Culture</h2>\n<p>\n	Our culture is centered around our core values and focuses on promoting positive service to all our customers. We are a happy, cheerful and positive thinking staff and aim to make everyone feel that their role is as vital in the whole process as the next persons.</p>\n<h2>\n	Why Our Work is Unique</h2>\n<p>\n	At [site-name] our job really starts after a wedding or event. Our cordial, friendly and professional photographers take quality photographs by understanding the dynamics of each event. We provide quality from start to the finish at an affordable price too!</p>\n<p>\n	<img alt="Unique Photobook Albums" src="/photography/media/image/unique_photobook_album.png" style="padding: 5px 5px 5px 0px; margin-right: 5px; float: left;" />Each photobook page is uniquely designed to retain interest and euphoria. The pages are 4 times thicker than a normal photographic paper, so from first touch you get the feel of quality and uniqueness.</p>\n<p>\n	In addition, the photographs are laminated to protect them from damage and UV rays, and to ensure they last a life time. Check out our testimony page and find out what others are saying</p>\n<p>\n	We understand the need to document, restore and archive photographic materials because as time goes by, your local history or personal family photographs may become lost or damaged.</p>\n<p>\n	We know the value of treasured memories and what they mean to you, while in our care your photo is treated with the utmost diligence.We aim to complete your order as quickly as possible while maintaining high standards and all finished work is inspected before leaving us.</p>\n<p>\n	At Rhema Studio work is carried out to the highest standard, we strive for the best possible results in all our projects. We want to provide an efficient and professional service, and are keen to discuss your needs with you so that you get exactly what you want. We may even be able to suggest alternatives that you may not have been aware of, so please don&#39;t hesitate to contact us with your queries.</p>\n', 1, '2010-02-06 22:11:37', '2011-05-15 00:16:41', 1, 1, 1),
(2, 'Wedding Photography', '', '<h1>\n	Wedding Photography Service</h1>\n<p>\n	You have imagined your perfect wedding day, &nbsp;invited guests, friends and family and made wedding plans to make your day memorable. Your wedding will be special and unique to you and that is the way we would make your wedding photographs.</p>\n<p>\n	Whether you are openly romantic or more reserved, fun loving or looking for something a little more edgy. Whatever your personality, beliefs, tradition or faith we look to photograph your wedding to suit your wishes and not how a photographer would like your day represented. We will offer advice and guidance as appropriate, we certainly have a lot of experience to share.</p>\n<ul>\n	<li>\n		The pre-wedding events</li>\n	<li>\n		The anticipation of your wedding day</li>\n	<li>\n		The walk down the aisle</li>\n	<li>\n		The moment you say I do</li>\n	<li>\n		The passionate kiss of wedding bliss</li>\n	<li>\n		The emotions of your special wedding day</li>\n	<li>\n		The joy of your wedding guests</li>\n	<li>\n		The gladness and love between your eyes</li>\n	<li>\n		These and more we capture with passion and enthusiasm</li>\n</ul>\n<p>\n	Creating beautiful wedding photographs is one thing, but equally important is the manner in which these photographic moments are captured. Our approach not only allows you and your wedding guests to enjoy your wedding with limited disruption, your wedding photobook album will be filled with photographs which evoke the real emotions of your wedding day. By documenting what we see, as it happens, the end results are beautiful, honest and natural. In essence, you have a digitally mastered wedding album embedded with your joint personalities.</p>\n<p>\n	We respect and value the trust placed in our hands when a couple chooses us as their wedding photographer, and in return they get our passion and commitment to producing a wedding album you will be proud of for years to come.</p>\n<p>\n	Please contact us for more information and an informal chat about your wedding photography requirements.</p>\n', 1, '2010-02-06 22:12:29', '2011-05-25 00:12:51', 1, 1, 1),
(3, 'Blog Comments and Reviews', '', '<h2>\n	Blogging - Comments and Reviews</h2>\n<p>\n	<img align="right" alt="Blogging" border="2" height="200" src="/web/images/graphics/chat.png" style="padding-bottom: 5px; padding-left: 5px; padding-right: 5px; margin-left: 5px; padding-top: 5px" title="Blog - Comments and Reviews" width="200" /></p>\n', 1, '2010-02-06 22:13:29', '2010-02-06 22:13:29', 1, 1, 1),
(4, 'Content Management System', '', '<h1>\n	Content Management Systems</h1>\n', 1, '2010-02-06 22:13:57', '2011-04-16 01:01:58', 1, 1, 1),
(5, 'Event Photography', 'Description of what ecommerce websites entail', '<h1>\n	Event Photography Service</h1>\n<p>\n	[site-name] are a progressive and exciting photography company specialising in high quality photography for events. Our event photography services covers most indoor and outdoor events. We employ the very latest, state of the art digital cameras, computers and printing equipment to produce the best quality photographic prints of your event. Photos are available for purchase at the event itself and are also usually available for purchase from our on-line Event Gallery usually within a couple of days after the event.</p>\n<p>\n	Event-Photos adds to the entertainment at your event, keeping your guests occupied, providing a fun, yet professional experience and photographic memento that your guests will remember for a long time. They won&rsquo;t forget they had that fun at your event.</p>\n<p>\n	Events we cover include:</p>\n<ul class="photo-event">\n	<li>\n		Balls and themed nights</li>\n	<li>\n		Black tie events</li>\n	<li>\n		Balls and end of year dinners</li>\n	<li>\n		Conferences and Seminars</li>\n	<li>\n		Religious events</li>\n	<li>\n		Charity dinners</li>\n	<li>\n		Dance schools</li>\n	<li>\n		Ladies Festivals</li>\n	<li>\n		Theme nights</li>\n	<li>\n		Weddings</li>\n	<li>\n		Corporate events</li>\n	<li>\n		Yearbooks</li>\n	<li>\n		Family portraits</li>\n	<li>\n		Child and baby portraits</li>\n	<li>\n		Dinner dances</li>\n	<li>\n		Birthdays</li>\n	<li>\n		Anniversaries</li>\n</ul>\n<p>\n	People always look their best at an event, occasion or captured in a professional portrait; photographs can capture a timeless moment in our lives like no other medium, and a highly experienced professional can make a world of difference from simply knowing how to pose people through to making them feel comfortable and confident in front of the lens. Our team will leave your family, guests or corporate clients with the perfect memory of your day, night or moment.</p>\n<p>\n	Memories can fade but great photographs last forever, so whatever your requirements we hope you enjoy looking over our website and contact us at any time to discuss how we can capture memories from your life.</p>\n', 1, '2010-02-06 22:14:27', '2011-05-25 00:09:51', 1, 1, 1),
(6, 'Home page ', '', '<div style="clear: both;">\n	<h1>\n		Welcome to [site-name]</h1>\n	\n	<p>\n		[site-name] specialises in creative reportage photography for weddings and special events. We strive to capture the excitements and emotions of your special event as they occur for your viewing pleasure.</p>\n	<p>\n		Our photographs are stylish, contemporary and presented in custom designed photobooks. These photobooks are painstakingly designed with each matchless design tailored to meet your needs.</p>\n	<p>\n		For a non-obligatory quote, feel free to contact [site-name] via our contact form, email or telephone. We look forward to hearing from you.</p>\n	<p>\n		Please feel free to browse our portfolio. You will definitely be glad you did!</p>\n</div>\n', 1, '2010-02-06 22:14:50', '2011-05-25 00:17:24', 1, 1, 1),
(7, 'Main Banner', '', '<p>\n	<img alt="" src="/golive/media/image/graphics/original/banner_2.png" style="width: 980px; height: 314px;" /></p>', 1, '2010-02-06 22:15:21', '2010-07-15 22:26:07', 1, 1, 1),
(8, 'Main Features', '', '<div class="featured-wrap">\r\n	<div class="feature red">\r\n		<h2>\r\n			Website Design</h2>\r\n		Establish your online presence in style</div>\r\n	<div class="feature blue">\r\n		<h2>\r\n			Content Management System</h2>\r\n		Update and manage your content easily</div>\r\n	<div class="feature green">\r\n		<h2>\r\n			eCommerce Websites</h2>\r\n		Sell your products and services with ease online</div>\r\n	<div class="feature orange">\r\n		<h2>\r\n			Brochure Websites</h2>\r\n		Simple but effective websites</div>\r\n	<div class="feature">\r\n		<h2>\r\n			SEO Optimisation</h2>\r\n		Rank high and get found by search engines</div>\r\n	<div class="feature">\r\n		<h2>\r\n			Bespoke Developments</h2>\r\n		We deliver exactly what you need for your business</div>\r\n</div>\r\n', 1, '2010-02-06 22:15:45', '2010-06-19 20:36:53', 1, 1, 1),
(9, 'Privacy Policy', '', '<h2>\n	Privacy Policy</h2>\n<p>\n	We are committed to ensuring that your information is secure. [site-name] may change this policy from time to time by updating this page. Please check this page from time to time to ensure that you are happy with any changes.</p>\n<ul class="policy-tc">\n	<li>\n		<a href="privacy-policy#rec">Commitment to Your Privacy</a></li>\n	<li>\n		<a href="privacy-policy#gather">Information [site-name] Gathers and Tracks.</a></li>\n	<li>\n		<a href="privacy-policy#what">What We Do With the Information We Gather.</a></li>\n	<li>\n		<a href="privacy-policy#security">Security</a>.</li>\n	<li>\n		<a href="privacy-policy#cookies">How We use Cookies.</a></li>\n	<li>\n		<a href="privacy-policy#links">Links to Other Websites.</a></li>\n	<li>\n		<a href="privacy-policy#disclaim">Disclaimer.</a></li>\n	<li>\n		<a href="privacy-policy#control">Controlling Your Personal Information.</a></li>\n	<li>\n		<a href="privacy-policy#consent">Your Consent. </a></li>\n</ul>\n<ol id="main">\n	<li>\n		<h3>\n			Commitment to your Privacy</h3>\n		<ol id="sub">\n			<li>\n				This site is owned and operated by [site-name]. Your privacy on the Internet is of the utmost importance to us. At [site-name], we want to make your experience online satisfying and safe.</li>\n			<li>\n				Because we gather certain types of information about our users, we feel you should fully understand our policy and the terms and conditions surrounding the capture and use of that information. This privacy statement discloses what information we gather and how we use it.</li>\n			<li>\n				[site-name] may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from 01 Jan 07.</li>\n		</ol>\n	</li>\n	<li>\n		<h3>\n			<a id="gather" name="gather"></a>Information [site-name] Gathers and Tracks</h3>\n		We may collect the following information:\n		<ol id="sub">\n			<li>\n				Name and job title</li>\n			<li>\n				Contact information including email address</li>\n			<li>\n				Demographic information such as post code, preferences and interests</li>\n			<li>\n				Other information relevant to customer surveys and/or offers</li>\n		</ol>\n		Generally, these include the Information that users provide through optional, voluntary submissions. These are voluntary submissions to participate in our message boards or forums, to email a friend.</li>\n	<li>\n		<h3>\n			<a id="what" name="what"></a>What we do with the Information we Gather</h3>\n		We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:\n		<ol id="sub">\n			<li>\n				Internal record keeping.</li>\n			<li>\n				We may use the information to improve our products and services.</li>\n			<li>\n				We may periodically send promotional email about new products, special offers or other information which we think you may find interesting using the email address which you have provided.</li>\n			<li>\n				From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail.</li>\n			<li>\n				We may use the information to customize the website according to your interests.</li>\n		</ol>\n		[site-name] will also collect information to process your order and to provide you with the best possible service.</li>\n	<li>\n		<h3>\n			<a id="security" name="security"></a>Security</h3>\n		We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</li>\n	<li>\n		<h3>\n			<a id="cookies" name="cookies"></a>How we use Cookies</h3>\n		<ol id="sub">\n			<li>\n				A cookie is a small file which asks permission to be placed on your computer&#39;s hard drive. Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</li>\n			<li>\n				We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</li>\n			<li>\n				Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us.</li>\n			<li>\n				You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</li>\n		</ol>\n	</li>\n	<li>\n		<h3>\n			<a id="links" name="links"></a>Links to other Websites</h3>\n		Our website may contain links to enable you to visit other websites of interest easily. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.</li>\n	<li>\n		<h3>\n			<a id="disclaim" name="disclaim"></a>Disclaimer</h3>\n		[site-name] does not support or endorse the accuracy or reliability of any information, content or advertisements contained, distributed through, or linked, downloaded from the services and businesses contained on this website. We do not endorse the quality of any services, products, information or materials displayed, purchased, or obtained by you as a result of an advertisement or any other information on [site-name]. [site-name] reserves the right, without any obligation whatsoever, to make improvements to, remove any business listing or correct any error or omissions in any part of the directory.</li>\n	<li>\n		<h3>\n			<a id="control" name="control"></a>Controlling you Personal Information</h3>\n		You may choose to restrict the collection or use of your personal information in the following ways:\n		<ol id="sub">\n			<li>\n				Whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes.</li>\n			<li>\n				If you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us.</li>\n			<li>\n				We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.</li>\n			<li>\n				You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to [site-address].</li>\n			<li>\n				If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible, at the above address. We will promptly correct any information found to be incorrect.</li>\n		</ol>\n	</li>\n	<li>\n		<h3>\n			<a id="consent" name="consent"></a>Your Consent</h3>\n		By using this site, you consent to the collection and use of this information by [site-name]. If we decide to change our privacy policy, we will post those changes on this page so that you are always aware of what information we collect, how we use it, and under what circumstances we disclose it.</li>\n</ol>\n', 1, '2010-02-06 22:16:14', '2011-04-15 22:49:52', 1, 1, 1),
(10, 'Our Services', '', '<h1>\n	[site-name] Services</h1>\n<p>\n	&nbsp;</p>\n<h2>\n	Wedding Photography</h2>\n<p>\n	We carrout out photography</p>\n<h2>\n	Event Photography</h2>\n<p>\n	we do events</p>\n<h2>\n	Photobook design services</h2>\n<p>\n	we design for you</p>\n<h2>\n	Gifts and Keepsakes</h2>\n<p>\n	We treasure your memories</p>\n', 1, '2010-02-06 22:16:50', '2011-05-24 22:21:59', 1, 1, 1),
(11, 'Weddig Gifts and Keepsakes', '', '<h1>\r\n	The Ideal Wedding Gift & Keepsakes</h1>\r\n<blockquote>\r\n	No better gift for a loved one can beat this !</blockquote>\r\n<p>\r\n	<img alt="Wedding Gifts" src="/photography/media/image/photobook.gif" style="width: 200px; height: 131px; float: left; padding-right: 10px;" />Getting the ideal wedding gift for a couple and loved ones can be a daunting task. Many couples now utilise wedding list, but the euphoria of receiving gifts disappears since they already know what to expect.</p>\r\n<p>\r\n	[site-name] offers a wedding gift package which would stand the test of time. The gift&#39;s value only appreciates and its significance to the couple becomes momentous as they grow old together. It also serve as memoirs for future generations. We all want to hear and have people we love encourage us for life and death are in the power of the tongue.</p>\r\n<p>\r\n	Apart from the aesthetic of the photobook, you can be sure that it will withstand wear and tear as the album pages are 4 times thicker that the regular photo paper. With comments or captions, each page tells a story.</p>\r\n<h2>\r\n	How does it work?</h2>\r\n<p>\r\n	All you need to do is:</p>\r\n<ul>\r\n	<li>\r\n		Send [site-name] the details of about 20 people that are highly respected by the bride and/or Groom. People they admire, look up to, and probably their mentors whose words they hold in high esteem.</li>\r\n	<li>\r\n		[site-name] will contact them and request for inspirational comments, poems, words of encouragements, attributes they admire about the couple etc. Any thing that would be a blessing to the couple and that they can fall back on when they need encouragement and something to reflect on.</li>\r\n	<li>\r\n		[site-name] would then acquire photos of these people, preferably we would expect them to send us digital copies but we can make alternative arrangements when necessary. The digitally mastered photos and comments would be compiled in the Rhema Studio Deluxe Photo book Package for you to present on their wedding day.</li>\r\n</ul>\r\n<p>\r\n	Another variation of this package is the compilation of the Bride / Grooms baby and growing up pictures with comments and annotations</p>\r\n', 1, '2010-02-06 22:17:22', '2011-05-24 23:28:06', 1, 1, 1),
(12, 'Terms and Conditions', '', '<h2>\n	Terms and Conditions</h2>\n<p>\n	Please read our terms and conditions which govern the services we offer and provide. If you have any queries, do not hesistate to contact us. These terms and conditions supersede any and all expressed or verbal terms and conditions. Any exceptions must be negotiated.</p>\n<div id="terms">\n	<ol id="main">\n		<li id="licop">\n			<h3>\n				<a href="" onclick="$(''candp'').toggle(); return false;">Costs and Payments</a></h3>\n			<ol class="sub" id="candp" style="display: none">\n				<li>\n					You must pay all charges as set out in the Quote. Cost estimates (and price quotes provided by Rhema Webdesign) are only valid for a period of 30 days.</li>\n				<li>\n					You will remain liable for all fees during any period when Services have been discontinued or suspended due to a failure on your part to comply with these terms and conditions.</li>\n				<li>\n					You will be invoiced as agreed in your quote. All accounts are payable before delivery of final artwork or uploading of final files to live sites.</li>\n				<li>\n					You are liable to pay overdue interest at 5 % /week on any amounts not paid within 7 days of invoice. All intellectual property rights remain with Rhema Webdesign until payment.</li>\n				<li>\n					All invoices have to be paid within 3 days. A late payment charge of &pound;50 will be applicable on all payments not made on time. You are also liable to pay overdue interest at 5 % per week on any amounts not paid. All intellectual property rights remain with Rhema Webdesign until payment.</li>\n				<li>\n					You must pay Rhema Webdesign.s charges without any set off, counter claim or deduction unless same is agreed in writing between us.</li>\n				<li>\n					Rhema Webdesign reserves the right to prioritize early paying clients and to charge urgency fees for turnaround within 3 working days. (VIP status).</li>\n				<li>\n					Agreed Costing is conditional on your supplying data required for a Website Stage or completion deadline agreed within 10 working days of confirmation of Order. Rhema Webdesign reserves the right to revise costings if that condition is not met in line with charges applying at the relevant time.</li>\n				<li>\n					<strong>No final artwork or files will be delivered until final invoices are paid in full.</strong> Payment by cheque will entail waiting for clearance before supply of files. Delivery being :Supply of final artwork digital files to printer <strong>or</strong> on disk <strong>or</strong> via email or uploaded to nominated ISP. Construction files or code files or script files remain the property of Rhema Webdesign.</li>\n				<li>\n					Printer or ISP Liason is charged at our current rate per hour.</li>\n				<li>\n					Quotations and proposals must be accepted in writing by letter or fax or email, or by signing the quotation or proposal. Acceptance of the quotation or proposal must be accompanied by a 50% deposit unless otherwise agreed.</li>\n				<li>\n					Deposits can be made by credit card, cheque or direct bank transfer.</li>\n				<li>\n					<strong>Design work will not commence until the deposit has been received and cleared.</strong></li>\n				<li>\n					Where progress payments are stipulated in a quotation or proposal, they will fall due and payable as specified in the quotation or proposal. Overdue progress payments may result in suspension of design works in progress until such time as all amounts in arrears including interest are paid in full.</li>\n				<li>\n					<ul id="subsub">\n						<li>\n							Rhema Webdesign reserves the right to recover all costs associated with recovering unpaid invoices, including legal and administrative costs.</li>\n						<li>\n							Rhema Webdesign reserves the right to recover intellectual property in cases where there is non-payment by any means it sees fit.</li>\n					</ul>\n				</li>\n				<li>\n					Rhema Webdesign reserves the right to revise and or alter initial quotes based on changes in website scope, changes or additional work provided by the client in addition to quote provided.</li>\n			</ol>\n		</li>\n		<li id="lilol">\n			<h3>\n				<a href="Limitation_of_Liability" onclick="$(''lofl'').toggle(); return false;">Limitation of Liability</a></h3>\n			<ol class="sub" id="lofl" style="display: none">\n				<li>\n					All terms conditions, warranties, undertakings inducements and representations, whether express or implied, statutory or otherwise relating to the provision of services by Rhema Webdesign not contained in the Agreement are excluded and Rhema Webdesign <em>will not accept liability for an loss or damange (inclucing consequencial loss of damage however caused (whether by negligence or otherwise) which may be suffered or incurred or which may arise directly or indirectly</em><strong> </strong>with respect to the service.</li>\n				<li>\n					Where any applicable legislation implies any term, condition or warranty into the Agreement or in respect of Rhema Webdesign.s relationship with you, or otherwise gives you a particular remedy against Rhema Webdesign and the legislation or any other legislation renders void or prohibits provisions excluding or modifying the application of, exercise of, or liability under such implied term, condition, warranty or remedy will be deemed to be included in the Agreement or as the case may require apply to the relationship between Rhema Webdesign and you. However, Rhema Webdesign.s liability for any such breach of such implied term, condition or warranty or under such remedy, will be limited, at Rhema Webdesign.s option, in any one or more of the ways permitted in that legislation, including, where so permitted if the breach relates to Services the supplying of those services again.</li>\n				<li>\n					You acknowledge that web sites cannot be guaranteed to be 100% error free in construction and acknowledge that the existence of errors falling short of a complete failure of consideration in the site shall not constitute a reason to terminate this agreement.</li>\n			</ol>\n		</li>\n		<li id="lisos">\n			<h3>\n				<a href="Suspension_of_Services" onclick="$(''sofs'').toggle(); return false;">Suspension of Services</a></h3>\n			<ol class="sub" id="sofs" style="display: none">\n				<li>\n					Rhema Webdesign reserves the right to suspend services in any case where you fail to perform your obligations under this agreement. If payment for services is not received within the terms of payment stipulated by us websites may be taken down until payment is confirmed.</li>\n				<li>\n					Rhema Webdesign may from time to time and without notice or liability to you suspend any of the services if the reason for doing same is an event beyond the reasonable control of Rhema Webdesign.</li>\n			</ol>\n		</li>\n		<li id="literm">\n			<h3>\n				<a href="Termination" onclick="$(''terminate'').toggle(); return false;">Termination</a></h3>\n			<ol class="sub" id="terminate" style="display: none">\n				<li>\n					Rhema Webdesign may discontinue services if an amount payable to Rhema Webdesign is overdue or take down a website permanently in any case where an amount payable is overdue by more than 7 days. In any such event, you remain liable for the total cost of the contract including all disbursements; unless otherwise agreed between the parties.</li>\n			</ol>\n		</li>\n		<li id="licont">\n			<h3>\n				<a href="Contents_of_Web_Pages_and_Undertakings" onclick="$(''contents'').toggle(); return false;">Contents of Web Pages and Undertakings</a></h3>\n			<ol class="sub" id="contents" style="display: none">\n				<li>\n					You will be solely responsible for the content of your Web Page/undertakings. Rhema Webdesign is not responsible for proofreading any content unless specifically agreed.</li>\n				<li>\n					Rhema Webdesign makes no representations to you concerning the content or functionality of your Web Site. This is your responsibility to ensure that it meets your requirements.</li>\n				<li>\n					If you provide Rhema Webdesign with goods, material, photographs, film, data or information to be used in any form, you hereby warrant that these do not infringe the rights of third parties and indemnify Rhema Webdesign against any action taken against Rhema Webdesign by any such third party.</li>\n				<li>\n					Without limiting the generality of the foregoing, you agree not to infringe the copyright trademark, privacy or personal or proprietary rights of third parties, supply libelous, abusive, obscene material or disparage the products or services of any third party.</li>\n				<li>\n					Rhema Webdesign for its part hereby undertakes not to knowingly infringe the rights of third parties in activities conducted on your behalf.</li>\n				<li>\n					You are solely responsible for dealing with persons who access your data or webpage and warrant that you will not refer complaints or inquiries in relation to such data to us.</li>\n				<li>\n					You acknowledge that web design and development work does not include the tasks and jobs of SEO (Search Engine optimization) and W3C validation. These are seperate jobs and if you want these to be undertaken by Rhema Webdesign, you will have to agree with Rhema Webdesign in writing and will be subject to seperate and extra cost.</li>\n			</ol>\n		</li>\n		<li id="litech">\n			<h3>\n				<a href="Technical_Support_Changes_and_Maintenance" onclick="$(''tech'').toggle(); return false;">Technical Support, Changes and Maintenance</a></h3>\n			<ol class="sub" id="tech" style="display: none">\n				<li>\n					Technical assistance will be offered via email. You acknowledge that all technical or support or maintenance queries will be sent by you via email to <strong>maintenance@rhema-webdesign.com</strong></li>\n			</ol>\n		</li>\n		<li id="liintell">\n			<h3>\n				<a href="Intellectual_Property" onclick="$(''intell'').toggle(); return false;">Intellectual Property</a></h3>\n			<ol class="sub" id="intell" style="display: none">\n				<li>\n					All creation files remain the property of Rhema Webdesign.</li>\n				<li>\n					Rhema Webdesign retains the Copyright in and the right to use all artwork created in advancing the profile of Rhema Webdesign and to be recognized for artwork created by Rhema Webdesign.</li>\n			</ol>\n		</li>\n		<li id="licanc">\n			<h3>\n				<a href="Cancellation_and_Termination#" onclick="$(''cancel'').toggle(); return false;">Cancellation and Termination</a></h3>\n			<ol class="sub" id="cancel" style="display: none">\n				<li>\n					Cancellation of an agreed quotation or proposal by you must be communicated to Rhema Webdesign both by telephone and in writing (letter, fax or email).</li>\n				<li>\n					Once design work has commenced, the deposit is not refundable. Where the project is cancelled at your request, any costs accrued by Rhema Webdesign over and above the deposit will be invoiced to you and will be due and payable immediately.</li>\n				<li>\n					Where design work has been agreed to and the project is cancelled at your request and where the design work has not yet commenced, a termination fee of 25% of the agreed quotation or proposal or the total of costs accrued by Rhema Webdesign to date will apply (whichever is greater).\n					<ul id="subsub">\n						<li>\n							Works in progress can be postponed at your request in writing. All outstanding costs to date will be invoiced to you and be payable immediately.</li>\n						<li>\n							Where you postpone a project in accordance with clause (iv)(a) of this section, work will be restarted and completed at your instruction in accordance with the specifications of the original quotation.</li>\n						<li>\n							Notwithstanding clause (iv)(b) of this section, work resumed after postponement will be subject to cost revision. Work will not restart until revised costing (if any) has been agreed to in writing.</li>\n						<li>\n							Rhema Webdesign reserves the right to terminate services where\n							<ul id="subsubsub">\n								<li>\n									there are outstanding invoices, or</li>\n								<li>\n									there is a material breach of these terms and conditions.</li>\n							</ul>\n						</li>\n						<li>\n							Rhema Webdesign will be entitled to cancel any agreement with you where you become insolvent, enter into voluntary arrangements with creditors, enter receivership or cease trading for any reason. This will be done without prejudice to any other rights or remedies available to Rhema Webdesign. Amounts owing will be invoiced and immediately due and payable.</li>\n					</ul>\n				</li>\n			</ol>\n		</li>\n	</ol>\n	<a href="#" onclick="Effect.ScrollTo(''terms''); return false;">Top</a></div>\n', 1, '2010-02-06 22:18:04', '2010-02-06 22:18:04', 1, 1, 1),
(13, 'Web Hosting', '', '<h1>\n	Web Hosting</h1>\n', 1, '2010-02-06 22:18:29', '2011-04-16 01:02:43', 1, 1, 1),
(14, 'Web Support and Maintenance', '', '<h1>\n	Support and Maintenance</h1>\n<p>\n	<img align="left" alt="web support" border="2" height="212" src="/web/images/graphics/image_tech_support.png" style="padding: 5px; margin-right: 5px;" title="support and maintenace" width="256" />[site-name] provide a full ongoing after sales service to help you promote and update your web site portfolio at any stage, thus helping your business and web site stay fresh in an ever changing market.</p>\n', 1, '2010-02-06 22:18:56', '2011-04-16 01:03:22', 1, 1, 1),
(15, 'Photobook Design Services', '', '<h1>\n	Photobook Design Services</h1>\n<p>\n	The photobook pages are printed on a thick high quality paper and the surfaces laminated with transparent finish in order to protect the photos completely and to filter ultra-violet rays. This way the rigid and flat printed sheet is protected from the atmosphere and perfect colour stability over time is guaranteed.</p>\n<p>\n	The album construction has three main characteristics:</p>\n<ul>\n	<li>\n		The cover has a foam layer inside that provides a very pleasant touch.</li>\n	<li>\n		The printed inner sheets are twice as thick as usual photo paper. They weigh 350 gr/m2, are folded and the backsides glued to each other, which means that an album page weighs about 700 gr/m2. i.e. 4 times the thickness of a normal photograph!</li>\n	<li>\n		The solid book binding system allows a 180&ordm; opening of the album with completely flat sheets. This is particularly interesting for photos that include more than one page.</li>\n</ul>\n<p>\n	The 20x29 cm (8&quot;x11.5&quot;) album is offered in various capacities between : 18 and 98 pages in multiples of 4. We design your photobooks with your needs in mind, depending on your tastes and what you can afford. Just talk to us and we&#39;ll put a unique package together just for you.</p>\n<h2>\n	Why You Should Have Our Photobook</h2>\n<p>\n	<em>Once you have seen it, you cannot do without it</em></p>\n<p>\n	After investing in organising your wedding or special event you would want to cherish for a life time, you most definitely want to share those memories with friends and family.</p>\n<p>\n	Our photobook provides the best means of presenting your memories in a classy and contemporary fashion that captures the joy and emotions of the day so your viewers can relieve those precious moments with you forever. The advantages our photo books offer over conventional albums includes:</p>\n<ul>\n	<li>\n		It provides a means of keeping all your photos and graphics in one place.</li>\n	<li>\n		A lot more photos can be displayed in one place for a lot less.</li>\n	<li>\n		You can document special moments and events by including captions, texts and narration.</li>\n	<li>\n		The photographs are designed and arranged in such a way that they tell a story, keeping your viewers wanting more.</li>\n	<li>\n		You always remember the names of your guests/friends by including them in the book.</li>\n	<li>\n		It is presentable and a classy way to showcase your photographs to impress your friends and family.</li>\n	<li>\n		Your memories are prevented from lose, damage or theft.</li>\n	<li>\n		It easily fits with other books on your book shelf. No special storage place required.</li>\n	<li>\n		They are durable, robust and portable. You can take them anywhere without much hassle, even on holiday.</li>\n	<li>\n		It can be easily personalised with your photo, what&rsquo;s possible is left to your imaginations.</li>\n</ul>\n<h2>\n	Photobooks Versatility</h2>\n<p>\n	Our custom designed photobook can be used for various reasons which include to:</p>\n<ul>\n	<li>\n		Preserve memories of special occasions and events such as wedding, graduations, house warming, vacations, Christmas balls &amp; parties, picnics, funerals, birthdays, christening and anniversaries (18th, 25th, 50th, 100th etc ). The list is endless and is only limited by your imagination.</li>\n	<li>\n		Introduce your company, organisation and/or products to visitors and also document visits of important dignitaries.&quot;You never get a second chance to make a first impression.&rdquo; Matt Lauer</li>\n	<li>\n		Record a baby&rsquo;s growth and development from birth through first cry, first crawl, and first step to maturity which would be a priceless wedding gift at the child&rsquo;s wedding.</li>\n	<li>\n		Document your family&rsquo;s roots, history and heritage for future generations with notes, captions, annotations and short descriptions. An absolute necessity for migrant families.</li>\n	<li>\n		Collate special thoughts and comments about a loved one with photographs of each author displayed. What a priceless gift.</li>\n</ul>\n', 1, '2010-02-06 22:19:19', '2011-05-25 00:14:51', 1, 1, 1),
(16, 'Feed Icon', '', '', 1, '2010-06-18 21:25:27', '2010-06-18 21:27:28', 1, 1, 1),
(17, 'We socialiase with curved arrow', '', '<div id="social_media">\n	<div class="curved_arrow">\n		<img alt="" src="/golive/media/image/graphics/original/curved_arrow.png" style="width: 47px; height: 75px;" /></div>\n	<div class="icons">\n		&nbsp;</div>\n	<div class="text">\n		<span class="title">we socialise</span> <span class="subtitle">Digg us, follow us, like us</span></div>\n</div>\n', 1, '2011-04-09 12:27:19', '2011-05-08 01:33:59', 1, 1, 1),
(18, 'Site Logo', '', '<h1>\n	<a href="/" title="Rhema Webdesign"><span class="site-tags">Rhema Web Design, ecommerce and web development</span></a></h1>\n', 1, '2011-04-10 01:53:52', '2011-04-15 21:31:50', 1, 1, 1),
(19, 'Contact Us Information', '', '<h1>\n	Contact [site-name]</h1>\n<p>\n	If you want to know more about one of our services, or you are having trouble finding what you want please do &nbsp;not hesitate to contact [site-name] using the form below. Any query you have will be answered as promptly as possible by our customer services team, and if necessary your questions will be forwarded to the relevant person, where they in turn will contact you.</p>\n', 1, '2011-04-10 14:01:39', '2011-04-15 22:25:20', 1, 1, 1),
(20, 'Tag Line', '', '<blockquote class="tag-line">\n	A photograph is worth a thousand words, digitally mastered, it&#39;s worth a million, personalised and annotated in a photobook, words cannot express!</blockquote>\n', 2, '2011-05-15 23:34:32', '2011-05-15 23:39:49', 1, 1, 1);

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
-- Table structure for table `ecom_attribute`
--

CREATE TABLE IF NOT EXISTS `ecom_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `placeholder` varchar(45) NOT NULL,
  `is_labeled` tinyint(4) DEFAULT '1',
  `is_product` tinyint(4) DEFAULT '1',
  `is_tab` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `placeholder` (`placeholder`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_brand`
--

CREATE TABLE IF NOT EXISTS `ecom_brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecom_brand`
--

INSERT INTO `ecom_brand` (`id`, `title`, `description`, `image_file`, `created_at`, `updated_at`) VALUES
(1, 'Rhema Studio', '', '', '2011-05-22 09:49:34', '2011-05-22 09:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_category`
--

CREATE TABLE IF NOT EXISTS `ecom_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `ecom_tax_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `ecom_category_sluggable_idx` (`slug`),
  KEY `ecom_tax_id_idx` (`ecom_tax_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecom_category`
--

INSERT INTO `ecom_category` (`id`, `title`, `code`, `description`, `image_file`, `ecom_tax_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Download Image', '', '', '', 1, '2011-05-22 09:49:57', '2011-05-22 09:49:57', 'download-image');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_delivery_method`
--

CREATE TABLE IF NOT EXISTS `ecom_delivery_method` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cost` decimal(18,2) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_delivery_method`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_display_template`
--

CREATE TABLE IF NOT EXISTS `ecom_display_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `ecom_display_type_id` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `ecom_display_type_id_idx` (`ecom_display_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_display_template`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_display_type`
--

CREATE TABLE IF NOT EXISTS `ecom_display_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_display_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_navigation_menu`
--

CREATE TABLE IF NOT EXISTS `ecom_navigation_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `m_module` varchar(45) NOT NULL DEFAULT 'storefront',
  `m_controller` varchar(45) NOT NULL DEFAULT 'index',
  `sequence` int(11) DEFAULT '1',
  `m_action` varchar(45) DEFAULT 'index',
  `m_route` varchar(45) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `is_label` tinyint(4) DEFAULT '0',
  `is_visible` tinyint(4) DEFAULT '1',
  `ecom_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `root_id` bigint(20) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecom_category_id_idx` (`ecom_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_navigation_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_order`
--

CREATE TABLE IF NOT EXISTS `ecom_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `gift_message` varchar(255) DEFAULT NULL,
  `delivery_charge` decimal(18,2) DEFAULT NULL,
  `tax` decimal(18,2) DEFAULT NULL,
  `total` decimal(18,2) DEFAULT NULL,
  `is_paid` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_order_details`
--

CREATE TABLE IF NOT EXISTS `ecom_order_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ecom_order_id` int(11) DEFAULT NULL,
  `ecom_product_id` int(11) DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecom_order_id_idx` (`ecom_order_id`),
  KEY `ecom_product_id_idx` (`ecom_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_order_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_payment_method`
--

CREATE TABLE IF NOT EXISTS `ecom_payment_method` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_payment_method`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_pers_layout`
--

CREATE TABLE IF NOT EXISTS `ecom_pers_layout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ecom_category_id` int(11) DEFAULT '0',
  `ecom_pers_item_id` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `dpi` int(11) DEFAULT NULL,
  `overlays` int(11) DEFAULT NULL,
  `height` decimal(18,2) DEFAULT NULL,
  `width` decimal(18,2) DEFAULT NULL,
  `margintop` decimal(18,2) DEFAULT NULL,
  `marginright` decimal(18,2) DEFAULT NULL,
  `marginbottom` decimal(18,2) DEFAULT NULL,
  `marginleft` decimal(18,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `ecom_category_id_idx` (`ecom_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_pers_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_product`
--

CREATE TABLE IF NOT EXISTS `ecom_product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `ecom_brand_id` varchar(45) DEFAULT NULL,
  `image_file` varchar(255) DEFAULT NULL,
  `price` float(18,2) DEFAULT '0.00',
  `discount_percent` float(18,2) DEFAULT '0.00',
  `rrp` float(18,2) DEFAULT '0.00',
  `quantity` bigint(20) DEFAULT '1',
  `is_enabled` tinyint(4) DEFAULT '1',
  `is_taxable` tinyint(4) DEFAULT '1',
  `is_virtual` tinyint(4) DEFAULT '0',
  `ecom_tax_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `ecom_product_sluggable_idx` (`slug`),
  KEY `ecom_brand_id_idx` (`ecom_brand_id`),
  KEY `ecom_tax_id_idx` (`ecom_tax_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ecom_product`
--

INSERT INTO `ecom_product` (`id`, `title`, `description`, `code`, `ecom_brand_id`, `image_file`, `price`, `discount_percent`, `rrp`, `quantity`, `is_enabled`, `is_taxable`, `is_virtual`, `ecom_tax_id`, `created_at`, `updated_at`, `admin_subsite_id`, `slug`) VALUES
(1, 'Small', '', 'SMLIMG', '1', '', 0.50, 0.00, 0.00, 1, 0, 0, 1, 1, '2011-05-22 09:53:04', '2011-05-22 09:55:27', 1, 'small'),
(3, 'Medium ', '', 'MEDIMG', '1', '', 1.50, 0.00, 0.00, 1, 0, 0, 1, 1, '2011-05-22 09:54:38', '2011-05-22 09:54:38', 1, 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_product_category`
--

CREATE TABLE IF NOT EXISTS `ecom_product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ecom_product_id` int(11) DEFAULT NULL,
  `ecom_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecom_product_id_idx` (`ecom_product_id`),
  KEY `ecom_category_id_idx` (`ecom_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_product_category`
--


-- --------------------------------------------------------

--
-- Table structure for table `ecom_tax`
--

CREATE TABLE IF NOT EXISTS `ecom_tax` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT '0.00',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ecom_tax`
--

INSERT INTO `ecom_tax` (`id`, `title`, `description`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'UK Tax', 'UK tax rate', '0.20', '2011-05-22 09:49:20', '2011-05-22 09:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_template_attribute`
--

CREATE TABLE IF NOT EXISTS `ecom_template_attribute` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ecom_attribute_id` int(11) DEFAULT NULL,
  `ecom_display_template_id` int(11) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ecom_attribute_id_idx` (`ecom_attribute_id`),
  KEY `ecom_display_template_id_idx` (`ecom_display_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_template_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `location` text NOT NULL,
  `content` text,
  `start_at` datetime NOT NULL,
  `end_at` datetime DEFAULT NULL,
  `event_type_id` int(11) DEFAULT NULL,
  `address_book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `is_allday` tinyint(4) DEFAULT '0',
  `is_sale` tinyint(4) DEFAULT '0',
  `color` varchar(120) DEFAULT NULL,
  `recurring_rule` text,
  `image_file` varchar(145) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_book_id_idx` (`address_book_id`),
  KEY `event_type_id_idx` (`event_type_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `description`, `keyword`, `location`, `content`, `start_at`, `end_at`, `event_type_id`, `address_book_id`, `user_id`, `is_active`, `is_allday`, `is_sale`, `color`, `recurring_rule`, `image_file`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'Kanyin & Pele', '', 'odiase1', 'Bradford', '<p>\n	Kanyin and Pele wanted something unique, classy and off the chain for the wedding album. They had over 450 photos taken during wedding but could not find their ideal package that showcase all the photographs they loved. 70 pages displaying 193 photographs.</p>\n', '2006-11-11 00:00:00', '2006-11-11 23:59:59', 1, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/odiase1/thumb.gif', '2011-05-18 20:36:10', '2011-05-21 23:17:42', 1),
(2, 'Alero weds Pele ', NULL, 'odiase2', 'Bradford', 'They had two volumes made which captured the events of the day as it unfolded, from the bride getting dressed to the couple leaving for their honey moon. The photobook includes captions and annotations, their  wedding vows , poems and excerpts from speeches delivered at the reception - 70 pages with 95 photographs.', '2006-11-11 00:00:00', '2006-11-11 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/odiase2/thumb.jpg', '2011-05-18 20:36:10', '2011-05-21 23:17:42', 1),
(3, 'Patricia & Isaac', NULL, 'madengu', 'Manchester', 'Mr. and Mrs. Madengu-Mangatu got married on the 16th of June 2007 at Hyde town hall, Hyde. A 78 page photobook displaying 259 photographs.', '2007-06-16 00:00:00', '2007-06-16 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/madengu/thumb.jpg', '2011-05-18 20:36:10', '2011-05-21 23:17:42', 1),
(4, 'Rose weds Ugo', NULL, 'inyama', 'Nigeria', 'Mr. & Mrs. Inyama got married in 2002 but 5 years down the line, they desired a more durable and presentable recollection of the most cherished moments of their lives. From the film negatives, we put together the artistic package which superseded their expectations. 50 pages with 124 photographs.', '2002-08-24 00:00:00', '2002-08-24 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/inyama/thumb.gif', '2011-05-18 20:36:10', '2011-05-21 23:17:42', 1),
(5, 'Itoro weds Edirin', '', 'arigbe', 'Nigeria', '<p>\n	The traditional wedding of Itoro and Edirin took place on the 9th of June 2007 while the military wedding and crossing of sword ceremony was held a week after, both in Nigeria. 70 page photobook displaying 171 photos.</p>\n', '2007-06-16 00:00:00', '2007-06-16 23:59:59', 1, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/arigbe/thumb.jpg', '2011-05-18 20:36:10', '2011-05-21 23:17:42', 1),
(6, 'Wedding Gift', '', 'gardner', 'Manchester', '<p>\n	A pictorial compilation of kind thoughts, encouragements and advices for the couple. A total of 25 contributions were received from family and friends highly respected by the bride/groom. A priceless wedding gift!</p>\n', '2007-07-14 00:00:00', '2007-07-14 23:59:59', 5, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/gardner/thumb.jpg', '2011-05-18 20:36:10', '2011-05-21 23:17:42', 1),
(7, 'Leslie & Zainab', NULL, 'shyllon', 'Freetown', 'Mr. &amp; Mrs Shyllon Wedded in April 1996. This photobook design was done from  photographs taken at the wedding and from images captured from video.', '1996-04-10 00:00:00', '1996-04-10 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/shyllon/thumb.jpg', '2011-05-18 20:36:10', '2011-05-21 23:17:42', 1),
(8, '@ El-Shaddai', NULL, 'oniye', 'Bradford', 'The wedding took place at El-Shaddai International Christian Centre Bradford. A 78-page photobook displaying 305 photographs. Viewing access restricted. Contact us for further details.', '2007-07-14 00:00:00', '2007-07-14 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/oniye/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:42', 1),
(9, 'Lihle weds Sipho ', NULL, 'moyo1', 'Manchester', 'The marriage of Mr. & Mrs. Moyo took place at the marriage registry Heron House Manchester on the 25th of August 2007. A 30-page photobook with 81 photos on display.', '2007-08-25 00:00:00', '2007-08-25 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/moyo1/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:41', 1),
(10, 'Thembe & Sipho', NULL, 'moyo2', 'Hyde', 'The church blessing, reception and evening party of Mr. &amp; Mrs. Moyo took place on the 8th of September 2007 at Hyde Town Hall, Hyde. A 78-page photobook displaying 281 photos.', '2007-09-08 00:00:00', '2007-09-08 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/moyo2/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:41', 1),
(11, 'Alero weds Edirin', NULL, 'arigbe2', 'Lagos', 'Our Son''s Wedding Photobook (OSW): Wedding photobook presented to the groom''s family. 70 page photobook displaying 171 photos.', '2007-06-09 00:00:00', '2007-06-09 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/arigbe2/thumb.jpg', '2011-05-18 20:36:11', '2011-05-21 23:17:42', 1),
(12, 'Mmapula Tsietso', '', 'tsietso', 'Botswana', '<p>\n	Rhema Studio Competition Winner - Photobook Star Prize was won by Mmapula. This is her personal photo collection. The photobook was designed from hard and digital copies of her album. A 50 page photobook displaying 124 photographs</p>\n', '2007-11-10 00:00:00', '2007-11-10 23:59:59', 5, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/tsietso/thumb.jpg', '2011-05-18 20:36:11', '2011-05-21 23:17:41', 1),
(13, 'Tim weds Joanna', NULL, 'grimshaw', 'Bradford', 'Wedding Photobook of Mr. & Mrs Grimshaw featuring 296 photographs in 78 pages. Event took place in Bradford, West Yorkshire on the 20th of October 2007.', '2007-10-20 00:00:00', '2007-10-20 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/grimshaw/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:41', 1),
(14, 'Dominic & Sally', NULL, 'shonhiwa', 'Birmingham', 'The wedding of Mr. &amp; Mrs. Shonhiwa took place on the 1st of December 2007 in Birmingham. Photographs taken at the wedding were presented in a 70-page photobook displaying 284 photographs.', '2007-12-01 00:00:00', '2007-12-01 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/shonhiwa/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:41', 1),
(15, 'Brendan Mosweu', '', 'mosweu', 'Bostwana', '<p>\n	Personal Photo collection of Brendan Mosweu</p>\n', '2008-02-16 00:00:00', '2008-02-16 23:59:59', 5, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/mosweu/thumb.jpg', '2011-05-18 20:36:11', '2011-05-21 23:17:02', 1),
(16, 'Jaz & Aswinder', '', 'singh', 'Birmingham', '<p>\n	This wedding photobook package of Mr. and Mrs Singh displays over 200 images in 78 pages. The photobook was designed from digital images and hard copies taken in 2007. It covers the Mendi, Choora, Jaggo and Mayian ceremonies consistent with a typical Sikh wedding .</p>\n', '2007-06-17 00:00:00', '2007-06-17 23:59:59', 1, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/singh/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:42', 1),
(17, 'Memory & Haroon', '', 'rashid', 'Bradford', '<p>\n	A 98-page photobook of Memory and Haroon Rashid&#39;s wedding. The event took place on the 2nd of May 2008 at El-Shaddai International Christian Centre, Bradford. Photographs include getting ready shots, photos of wedding ceremony, reception and night party.</p>\n', '2008-05-02 00:00:00', '2008-05-02 23:59:59', 1, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/rashid/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:02', 1),
(18, 'Dr. & Mrs. Ajulo ', '', 'ajulo', 'Wakefield', '<p>\n	30 years and still counting in holy matrimony, the Ajulo&#39;s celebrate their pearl anniversary in Wakefield. A 98 page photobook displaying over 200 photos.</p>\n', '2011-05-18 00:00:00', '2011-05-18 00:00:00', 4, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/ajulo/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:01', 1),
(19, 'Nkeiru weds Ilo', NULL, 'akubuo', 'Leeds', 'Wedding photobook of Mr. & Mrs. Akubuo. The event took place at the Immaculate Heart of Mary Catholic Church Leeds, West Yorkshire.', '2008-08-16 00:00:00', '2008-08-16 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/akubuo/thumb.gif', '2011-05-18 20:36:11', '2011-05-21 23:17:02', 1),
(20, 'Inspire 2007', '', 'inspire', 'Bradford', '<p>\n	El-Shaddai Bradford Women&#39;s Conference</p>\n', '2007-08-10 00:00:00', '2007-08-10 23:59:59', 3, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/inspire/thumb.jpg', '2011-05-18 20:36:11', '2011-05-21 23:17:41', 1),
(21, 'Inspire 2007', '', 'inspire2', 'Bradford', '<p>\n	Inspire womens conference bradford</p>\n', '2007-08-10 00:00:00', '2007-08-10 23:59:59', 3, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/inspire2/thumb.jpg', '2011-05-18 20:36:11', '2011-05-21 23:17:41', 1),
(22, 'Fouzia & Joinal', '', 'fouzia', 'Bradford', '<p>\n	This event took place over three days. The Medhi ceremony was done in Bradford on Friday 22nd August while the Nikah (wedding ceremony took place on Sunday, the 24th also in Bradford. The Walima (wedding reception) was hosted in Birmingham 3 days later.</p>\n', '2008-08-24 00:00:00', '2008-08-24 23:59:59', 1, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/fouzia/thumb.png', '2011-05-18 20:36:11', '2011-05-21 23:17:02', 1),
(23, 'Change 2008', '', 'change08', 'London', '', '2008-07-23 00:00:00', '2008-07-23 23:59:59', 3, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/change08/thumb.jpg', '2011-05-18 20:36:12', '2011-05-21 23:17:02', 1),
(24, 'Reflection 2008', '', 'reflection08', 'London', '', '2008-05-23 00:00:00', '2008-05-23 23:59:59', 3, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/reflection08/thumb.jpg', '2011-05-18 20:36:12', '2011-05-21 23:17:02', 1),
(25, 'Glamour & Style', '', 'glamour', 'Birmingham', '<p>\n	El-shaddai Birmingham&#39;s 20s up cocktail party featuring cocktails and refreshments, evening entertainment and jazz band.</p>\n', '2008-10-25 00:00:00', '2008-10-25 23:59:59', 2, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/glamour/thumb.jpg', '2011-05-18 20:36:12', '2011-05-23 21:23:09', 1),
(26, 'Joanna & Tim', '', 'grimshaw2', 'Bradford', '<p>\n	Redesign of their wedding album on their 1st wedding anniversary</p>\n', '2007-10-20 00:00:00', '2007-10-20 23:59:59', 1, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/grimshaw2/thumb.png', '2011-05-18 20:36:12', '2011-05-21 23:17:41', 1),
(27, 'Cristina and Didier', NULL, 'pennine', 'Glenridding', 'Wedding ceremony &nbsp;of Christina and Didier Penine which tool place on the 26th of July 2008 at Glenridding. A 98 page photobook showcasing 240 photographs.\r\nCompliments to Crash Taylor Photography.', '2008-08-26 00:00:00', '2008-08-26 23:59:59', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/pennine/thumb.gif', '2011-05-18 20:36:12', '2011-05-21 23:17:02', 1),
(28, 'Man08 Xmas Ball', '', 'man08', 'Manchester', '<p>\n	ESICC Christmas Ball</p>\n', '2008-12-19 00:00:00', '2008-12-19 23:59:59', 2, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/man08/thumb.gif', '2011-05-18 20:36:12', '2011-05-23 21:24:04', 1),
(29, 'Brad08 Xmas Ball', '', 'brad08', 'Leeds', '<p>\n	ESICC Bradford Christmas Ball @ Leeds 2008</p>\n', '2008-12-20 00:00:00', '2008-12-20 23:59:59', 1, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/brad08/thumb.gif', '2011-05-18 20:36:12', '2011-05-21 23:34:01', 1),
(30, 'Brad07 Xmas Ball', '', 'brad07', 'Leeds', '<p>\n	ESICC Christmas Ball @ Leeds Marriot Hotel 2007</p>\n', '2011-05-21 00:00:00', '2011-05-21 00:00:00', 2, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/brad07/thumb.gif', '2011-05-18 20:36:12', '2011-05-21 23:33:38', 1),
(31, 'Man 20up', '', 'man20up07', 'Manchester', '<p>\n	ESICC S0&#39;s up launch Manchester</p>\n', '2007-04-21 16:40:00', '2007-04-22 16:39:59', 2, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/man20up07/thumb.jpg', '2011-05-18 20:36:12', '2011-05-23 21:23:52', 1),
(32, 'CFP Dec 07', '', 'cfpdec07', 'Bradford', '<p>\n	ESICC Bradford Created For Praise event featuring Ron Kenoly in concert</p>\n', '2011-05-23 00:00:00', '2011-05-23 00:00:00', 2, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/cfpdec07/thumb.gif', '2011-05-18 20:36:12', '2011-05-23 21:21:41', 1),
(33, 'Kate is 90th', '', 'kate', 'Coventry', '<p>\n	Kates 90th Birthday Celebration</p>\n', '2008-09-20 00:00:00', '2008-09-20 23:59:59', 4, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/kate/thumb.jpg', '2011-05-18 20:36:12', '2011-05-23 21:23:33', 1),
(34, 'Faith Conference', '', 'manfc08', 'Manchester', '<p>\n	ESICC Manchester&#39;s faith conference 2008</p>\n', '2011-05-23 00:00:00', '2011-05-23 00:00:00', 3, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/manfc08/thumb.gif', '2011-05-18 20:36:12', '2011-05-23 21:22:55', 1),
(35, 'CFP Mar 2007', '', 'cfpmar07', 'Bradford', '<p>\n	ESICC Bradford - Created For Praise event featuring Noel Robinson and the NU Band</p>\n', '2007-03-04 00:00:00', '2007-03-04 23:59:59', 2, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/cfpmar07/thumb.gif', '2011-05-18 20:36:12', '2011-05-23 21:21:51', 1),
(36, 'CFP Oct 08', '', 'cfpoct08', 'Bradford', '<p>\n	ESICC Bradford - Created For Praise event featuring the world renowned gospel artist Muyiwa</p>\n', '2008-11-09 00:00:00', '2008-11-09 23:59:59', 2, 1, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/cfpoct08/thumb.gif', '2011-05-18 20:36:12', '2011-05-23 21:22:02', 1),
(37, 'Victory 07', '', 'vic07', 'Bradford', '<p>\n	ESICC Bradfords - Victory Conference and Created for Praise event featuring the world&#39;s famous gospel artist and legent Ron Kenoly</p>\n', '2007-07-15 00:00:00', '2007-07-15 23:59:59', 3, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/vic07/thumb.jpg', '2011-05-18 20:36:12', '2011-05-21 23:17:41', 1),
(38, 'Omare''s 50th', '', 'omare', 'Benin', '<p>\n	50th Birthday celebration</p>\n', '2008-09-12 00:00:00', '2008-09-12 23:59:59', 4, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/omare/thumb.gif', '2011-05-18 20:36:13', '2011-05-21 23:17:02', 1),
(39, 'Her Birthday', '', 'bcoker', 'Benin', '<p>\n	Marking the her birthday in style - Dr. M Benka-Coker</p>\n', '2008-09-09 00:00:00', '2008-09-09 23:59:59', 4, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/bcoker/thumb.gif', '2011-05-18 20:36:13', '2011-05-21 23:17:02', 1),
(40, 'Zandile & Melusi', '', 'zandile', 'Ardwick', '<p>\n	Wedding of Zandile and Melusi in Manchester</p>\n', '2007-08-25 00:00:00', '2007-08-25 23:59:59', 1, NULL, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/zandile/thumb.gif', '2011-05-18 20:36:13', '2011-05-23 21:25:06', 1),
(41, 'Pauline & Robert', '', 'george', 'Leeds', '<p>\n	Wedding ofPauline and Robert George in leeds 30th August 2008</p>\n', '2008-08-30 00:00:00', '2008-08-30 23:59:59', 1, NULL, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/george/thumb.jpg', '2011-05-18 20:36:13', '2011-05-23 21:24:22', 1),
(42, 'Thuli weds Gerald', '', 'thuli', 'Bradford', '<p>\n	Wedding of Thuli and Gerald in Bradford - 5th July 2008</p>\n', '2008-07-05 00:00:00', '2008-07-05 23:59:59', 1, NULL, 1, 1, 0, 1, '', '', '/photography/media/portfolio/photobook/thuli/thumb.jpg', '2011-05-18 20:36:13', '2011-05-23 21:24:40', 1),
(43, 'Suki & Sukhi', NULL, 'suki', 'Bradford', 'Sikh wedding of Suki and Sukhi in Bradford 27 - 28 September 2008', '2008-09-28 07:37:34', '2008-09-29 07:37:33', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/suki/thumb.gif', '2011-05-18 20:36:13', '2011-05-21 23:17:01', 1),
(44, 'Cathie weds Isaac', '', 'odiase3', 'Nigeria', '<p>\n	Wedding of Catherine and Isaac took place in Delta State, Nigeria</p>\n', '2009-04-18 08:39:28', '2009-04-19 08:39:27', 1, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/odiase3/thumb.gif', '2011-05-18 20:36:13', '2011-05-21 23:17:01', 1),
(45, 'Kevin & Kete', NULL, 'kevin', 'Bradford', 'Wedding of Mr. and Mrs. Kevin Fatinikun took place on the 30th May 2009 at the El-Shaddai International Christian Center Bradford, West Yorkshire.', '2009-05-30 09:23:27', '2009-05-31 09:23:26', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/kevin/thumb.gif', '2011-05-18 20:36:13', '2011-05-21 23:17:01', 1),
(46, 'Vince & Nkiru', NULL, 'omenukwa', 'Nigeria', 'Traditional and Christian wedding ceremonies of Mr. and Mrs. Vincent Omenukwa.', '2008-12-29 09:55:52', '2008-12-30 09:55:51', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/omenukwa/thumb.gif', '2011-05-18 20:36:13', '2011-05-21 23:17:01', 1),
(47, 'Kemi is 40', '', 'obayelu', 'Birmingham', '<p>\n	The 40th Birthday celebration of Mrs. Obayelu took place on the 4th of April 2009</p>\n', '2009-04-04 10:12:40', '2009-04-05 10:12:39', 4, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/obayelu/thumb.gif', '2011-05-18 20:36:13', '2011-05-21 23:17:01', 1),
(48, 'Chido & Vanessa', '', 'gideon', 'Bradford', '<p>\n	Chido and Vanessa got married at El-Shaddai International Christian Center Bradford, West Yorkshire on the 1st of August 2009. A fruitful union it was!</p>\n', '2009-08-01 10:27:35', '2009-08-02 10:27:34', 1, 1, 1, 1, 0, 0, '', '', '/photography/media/portfolio/photobook/gideon/thumb.gif', '2011-05-18 20:36:13', '2011-05-21 23:17:01', 1),
(49, 'Bola and Tunde', NULL, 'oyinloye', 'Manchester', '', '2010-08-14 01:05:37', '2010-08-15 01:05:36', 1, NULL, 1, 1, 0, 0, NULL, NULL, '/photography/media/portfolio/photobook/oyinloye/thumb.gif', '2011-05-18 20:36:13', '2011-05-18 20:36:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE IF NOT EXISTS `event_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `event_type_sluggable_idx` (`slug`,`title`,`admin_subsite_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`id`, `title`, `description`, `sort_order`, `created_at`, `updated_at`, `admin_subsite_id`, `slug`) VALUES
(1, 'Weddings', '', 1, '2011-05-18 20:42:56', '2011-05-18 20:42:56', 1, 'weddings'),
(2, 'Social and Special Occasions', '', 1, '2011-05-18 20:43:22', '2011-05-18 20:43:22', 1, 'social-and-special-occasions'),
(3, 'Conferences', '', 1, '2011-05-18 20:43:35', '2011-05-18 20:43:35', 1, 'conferences'),
(4, 'Birthdays and Anniversaries', '', 1, '2011-05-18 20:43:52', '2011-05-18 20:43:52', 1, 'birthdays-and-anniversaries'),
(5, 'Gifts and Keepsakes', '', 1, '2011-05-18 20:44:10', '2011-05-18 20:44:10', 1, 'gifts-and-keepsakes');

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
  `image_file` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `css` varchar(45) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `sequence` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
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
-- Table structure for table `help_boiler_plate`
--

CREATE TABLE IF NOT EXISTS `help_boiler_plate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` varchar(255) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_boiler_plate`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_category`
--

CREATE TABLE IF NOT EXISTS `help_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_category`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_document`
--

CREATE TABLE IF NOT EXISTS `help_document` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(145) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `related_item` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  `help_type_id` int(11) NOT NULL,
  `help_category_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `admin_group_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `help_document_sluggable_idx` (`slug`),
  KEY `help_category_id_idx` (`help_category_id`),
  KEY `help_type_id_idx` (`help_type_id`),
  KEY `role_id_idx` (`role_id`),
  KEY `admin_group_id_idx` (`admin_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_document`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_field`
--

CREATE TABLE IF NOT EXISTS `help_field` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(145) NOT NULL,
  `label` varchar(145) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_mandatory` tinyint(4) DEFAULT '1',
  `is_searchable` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_field`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_section`
--

CREATE TABLE IF NOT EXISTS `help_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sequence` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_section`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_template`
--

CREATE TABLE IF NOT EXISTS `help_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_template`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_template_boiler_plate`
--

CREATE TABLE IF NOT EXISTS `help_template_boiler_plate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `help_template_id` int(11) NOT NULL,
  `help_boiler_plate_id` int(11) NOT NULL,
  `position` enum('top','bottom') DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `help_template_id_idx` (`help_template_id`),
  KEY `help_boiler_plate_id_idx` (`help_boiler_plate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_template_boiler_plate`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_template_field`
--

CREATE TABLE IF NOT EXISTS `help_template_field` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `help_template_id` int(11) NOT NULL,
  `help_field_id` int(11) NOT NULL,
  `is_readonly` tinyint(4) DEFAULT '0',
  `sequence` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `help_template_id_idx` (`help_template_id`),
  KEY `help_field_id_idx` (`help_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_template_field`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_template_layout`
--

CREATE TABLE IF NOT EXISTS `help_template_layout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `help_template_id` int(11) NOT NULL,
  `help_section_id` int(11) NOT NULL,
  `help_field_id` int(11) DEFAULT NULL,
  `section_seq` int(11) DEFAULT '0',
  `item_seq` int(11) DEFAULT '0',
  `content_type` varchar(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `help_field_id_idx` (`help_field_id`),
  KEY `help_template_id_idx` (`help_template_id`),
  KEY `help_section_id_idx` (`help_section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_template_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_type`
--

CREATE TABLE IF NOT EXISTS `help_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `prefix` varchar(45) NOT NULL,
  `level` int(11) DEFAULT '1',
  `help_template_id` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `help_template_id_idx` (`help_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `help_type`
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
  `messsage` varchar(255) NOT NULL,
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
  `description` varchar(150) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `m_module` varchar(45) NOT NULL DEFAULT 'storefront',
  `m_controller` varchar(45) NOT NULL DEFAULT 'index',
  `sequence` mediumint(9) DEFAULT '1',
  `m_action` varchar(45) DEFAULT 'index',
  `m_route` varchar(45) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `is_label` tinyint(4) DEFAULT '0',
  `is_visible` tinyint(4) DEFAULT '1',
  `page_id` int(11) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
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
  UNIQUE KEY `menu_sluggable_idx` (`slug`,`label`,`admin_subsite_id`),
  KEY `menuindex_idx` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `description`, `label`, `m_module`, `m_controller`, `sequence`, `m_action`, `m_route`, `image_file`, `is_label`, `is_visible`, `page_id`, `params`, `created_at`, `updated_at`, `root_id`, `lft`, `rgt`, `level`, `slug`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 'Top', '', 'Rhema Studio Photography', 'storefront', 'index', 1, 'index', '', '', 0, 1, 1, '', '2011-04-09 05:33:19', '2011-05-25 00:28:44', 1, 1, 12, 0, '', NULL, 1),
(2, 'Bottom', '', 'Rhema Studio', 'storefront', 'index', 1, 'index', '', '', 0, 1, 1, '', '2011-04-09 05:33:19', '2011-05-25 00:21:05', 2, 1, 18, 0, 'rhema-webdesign-bottom', NULL, 1),
(3, 'Main', '', 'Rhema Studio Photography', 'storefront', 'index', 1, 'index', '', '', 0, 1, 1, '', '2011-04-08 05:35:17', '2011-05-25 00:29:32', 3, 1, 14, 0, 'main', NULL, 1),
(4, 'Home', '', 'Home', 'storefront', 'index', 1, 'index', '', '', 0, 1, 1, '', '2011-04-09 05:40:13', '2011-04-09 12:01:26', 3, 2, 3, 1, 'index', NULL, 1),
(5, 'About Us', '', 'About Us', 'storefront', 'index', 1, 'index', '', '', 0, 1, 4, '', '2011-04-09 11:49:43', '2011-04-10 02:45:19', 3, 4, 5, 1, 'about-us', NULL, 1),
(6, 'Contact Us', '', 'Contact Us', 'storefront', 'index', 1, 'index', '', '', 0, 1, 3, '', '2011-04-09 11:59:14', '2011-05-21 17:48:27', 3, 12, 13, 1, 'contact-us', NULL, 1),
(7, 'Home', '', 'Home', 'storefront', 'index', 1, 'index', '', '', 0, 1, 1, '', '2011-04-10 01:27:56', '2011-04-16 00:28:36', 2, 2, 5, 1, '', NULL, 1),
(8, 'Login', '', 'Login', 'storefront', 'index', 1, 'login', '', '', 0, 1, 2, '', '2011-04-10 01:28:36', '2011-05-25 00:24:43', 1, 2, 3, 1, 'login', NULL, 1),
(9, 'Logout', '', 'Logout', 'storefront', 'index', 1, 'logout', 'logout-page', '', 0, 1, 1, '', '2011-04-10 01:29:33', '2011-05-23 21:55:58', 1, 8, 9, 1, 'logout', NULL, 1),
(10, 'Contact Us', '', 'Contact Us', 'storefront', 'index', 1, 'index', '', '', 0, 1, 3, '', '2011-04-10 02:42:44', '2011-05-25 00:21:05', 2, 16, 17, 1, 'contact-us-1', NULL, 1),
(11, 'Portfolio', '', 'Portfolio', 'storefront', 'index', 1, 'index', '', '', 0, 1, 5, '', '2011-04-10 02:44:49', '2011-05-21 17:48:27', 3, 8, 11, 1, 'portfolio', NULL, 1),
(12, 'Access Denied', '', 'Access Denied', 'storefront', 'error', 1, 'deny', '', '', 0, 0, 6, '', '2011-04-10 15:45:51', '2011-05-23 21:55:59', 1, 10, 11, 1, 'access-denied', NULL, 1),
(13, 'Event Photography', '', 'Event Photography', 'storefront', 'index', 1, 'index', '', '', 0, 1, 8, '', '2011-04-10 19:16:17', '2011-05-15 00:18:43', 22, 4, 5, 1, 'event-photography', NULL, 1),
(14, 'Photobook Design', '', 'Photobook Design', 'storefront', 'index', 1, 'index', '', '', 0, 1, 11, '', '2011-04-10 19:16:28', '2011-05-15 00:18:55', 22, 6, 7, 1, 'photobook-design', NULL, 1),
(15, 'Content Management', '', 'Content Management', 'storefront', 'index', 1, 'index', '', '', 0, 0, 7, '', '2011-04-10 19:17:31', '2011-05-04 23:39:30', 22, 10, 11, 1, 'content-management', NULL, 1),
(16, 'Our Services', '', 'Our Services', 'storefront', 'index', 1, 'index', '', '', 0, 0, 12, '', '2011-04-10 19:20:55', '2011-04-17 23:32:03', 2, 6, 7, 1, 'our-services', NULL, 1),
(17, 'Our Services', '', 'Our Services', 'storefront', 'index', 1, 'index', '', '', 0, 0, 12, '', '2011-04-10 19:36:03', '2011-05-25 00:20:11', 3, 6, 7, 1, 'our-services-main', NULL, 1),
(18, 'Web Support', '', 'Web Support', 'storefront', 'index', 1, 'index', '', '', 0, 0, 15, '', '2011-04-10 19:40:03', '2011-04-17 23:52:13', 2, 8, 9, 1, 'web-support', NULL, 1),
(19, 'Web Hosting', '', 'Web Hosting', 'storefront', 'index', 1, 'index', '', '', 0, 0, 16, '', '2011-04-10 19:40:18', '2011-05-04 23:39:30', 22, 12, 13, 1, 'web-hosting', NULL, 1),
(20, 'Blog', '', 'Blog', 'storefront', 'index', 1, 'index', '', '', 0, 1, 13, '', '2011-04-10 19:41:51', '2011-05-25 00:21:05', 2, 14, 15, 1, 'blog', NULL, 1),
(21, 'Privacy Policy', '', 'Privacy Policy', 'storefront', 'index', 1, 'index', '', '', 0, 1, 14, '', '2011-04-10 19:42:45', '2011-04-16 00:37:37', 2, 10, 11, 1, 'privacy-policy', NULL, 1),
(22, 'Services', '', 'Rhema Studio Photography', 'storefront', 'index', 1, 'index', '', '', 1, 1, 12, '', '2011-04-16 00:28:36', '2011-05-25 00:28:52', 22, 1, 14, 0, 'services', NULL, 1),
(23, 'Wedding Photography', '', 'Wedding Photography', 'storefront', 'index', 1, 'index', '', '', 0, 1, 10, '', '2011-04-16 00:28:36', '2011-05-15 00:18:30', 22, 2, 3, 1, 'wedding-photography', NULL, 1),
(24, 'Gifts and Keepsakes', '', 'Gifts and Keepsakes', 'storefront', 'index', 1, 'index', '', '', 0, 1, 9, '', '2011-05-04 23:39:29', '2011-05-15 00:19:11', 22, 8, 9, 1, 'gifts-and-keepsakes', NULL, 1),
(25, 'Photobook Preview', '', 'Photobook Preview', 'storefront', 'index', 1, 'photobook-preview', '', '', 0, 1, 17, '', '2011-05-21 17:48:27', '2011-05-21 21:08:47', 3, 9, 10, 2, 'photobook-preview', NULL, 1),
(26, 'Reviews', '', 'Reviews', 'storefront', 'index', 1, 'index', '', '', 0, 1, 16, '', '2011-05-22 08:34:10', '2011-05-25 00:21:05', 2, 12, 13, 1, 'reviews', NULL, 1),
(27, 'Shopping Cart', '', 'Shopping Cart', 'storefront', 'index', 1, 'index', '', '', 0, 1, 15, '', '2011-05-22 10:08:14', '2011-05-23 21:54:08', 1, 4, 5, 1, 'cart', NULL, 1),
(28, 'Order Confirmation', '', 'Order Confirmation', 'storefront', 'index', 1, 'index', '', '', 0, 0, 18, '', '2011-05-23 21:54:18', '2011-05-23 21:56:04', 1, 6, 7, 1, 'order-confirmation', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `url` varchar(15) DEFAULT NULL,
  `news_category_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_category_id_idx` (`news_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `news`
--


-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE IF NOT EXISTS `news_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image_file` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `news_category`
--


-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `keyword` varchar(255) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_hidden` tinyint(4) DEFAULT '0',
  `is_cached` tinyint(4) DEFAULT '0',
  `is_secure` tinyint(4) DEFAULT '0',
  `template_id` int(11) NOT NULL,
  `page_header_id` int(11) NOT NULL,
  `page_footer_id` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_sluggable_idx` (`slug`,`title`,`admin_subsite_id`),
  KEY `category_id_idx` (`category_id`),
  KEY `page_header_id_idx` (`page_header_id`),
  KEY `template_id_idx` (`template_id`),
  KEY `page_footer_id_idx` (`page_footer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `description`, `category_id`, `is_active`, `keyword`, `start_at`, `end_at`, `is_hidden`, `is_cached`, `is_secure`, `template_id`, `page_header_id`, `page_footer_id`, `note`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `admin_subsite_id`, `slug`) VALUES
(1, 'Home Page', '', 1, 1, '', '2011-04-10 00:00:00', '2011-04-10 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-09 03:55:53', '2011-04-10 12:57:09', 1, 1, NULL, 1, 'index'),
(2, 'Login', '', 1, 1, '', '2011-04-10 01:30:29', '2011-04-10 01:30:29', 0, 0, 0, 7, 1, 1, '', '2011-04-10 01:30:29', '2011-04-10 12:59:50', 1, 1, NULL, 1, 'login'),
(3, 'Contact Us', '', 1, 1, '', '2011-04-10 00:00:00', '2011-04-10 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 02:43:50', '2011-04-10 12:59:19', 1, 1, NULL, 1, 'contact-us'),
(4, 'About Us', '', 1, 1, '', '2011-04-10 00:00:00', '2011-04-10 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 02:44:06', '2011-04-10 12:59:32', 1, 1, NULL, 1, 'about-us'),
(5, 'Portfolio', '', 1, 1, '', '2011-04-10 00:00:00', '2011-04-10 00:00:00', 0, 0, 0, 7, 3, 1, '', '2011-04-10 02:44:25', '2011-04-10 21:39:31', 1, 1, NULL, 1, 'portfolio'),
(6, 'Access Denied', '', 1, 1, '', '2011-05-22 00:00:00', '2011-05-22 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 15:37:31', '2011-05-22 23:29:40', 1, 1, NULL, 1, 'deny'),
(7, 'Content Management System', '', 1, 1, '', '2011-04-10 18:49:24', '2011-04-10 18:49:24', 0, 0, 0, 7, 1, 1, '', '2011-04-10 18:49:24', '2011-04-10 18:49:24', 1, 1, NULL, 1, 'content-management-system'),
(8, 'Event Photography', '', 1, 1, '', '2011-05-21 00:00:00', '2011-05-21 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 18:50:05', '2011-05-21 20:21:53', 1, 1, NULL, 1, 'event-photography'),
(9, 'Wedding Gifts and Keepsakes', '', 1, 1, '', '2011-05-17 00:00:00', '2011-05-17 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 18:50:35', '2011-05-17 07:24:59', 1, 1, NULL, 1, 'wedding-gifts-and-keepsakes'),
(10, 'Wedding Photography', '', 1, 1, '', '2011-05-21 00:00:00', '2011-05-21 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 18:51:37', '2011-05-21 20:22:26', 1, 1, NULL, 1, 'wedding-photography'),
(11, 'Photobook Design Services', '', 1, 1, '', '2011-05-15 00:00:00', '2011-05-15 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 18:52:17', '2011-05-15 23:59:26', 1, 1, NULL, 1, 'photobook-design-services'),
(12, 'Our Services', '', 1, 1, '', '2011-04-10 19:35:22', '2011-04-10 19:35:22', 0, 0, 0, 7, 1, 1, '', '2011-04-10 19:35:22', '2011-04-10 19:35:22', 1, 1, NULL, 1, 'our-services'),
(13, 'Blog', '', 1, 1, '', '2011-04-10 19:52:42', '2011-04-10 19:52:42', 0, 0, 0, 7, 3, 1, '', '2011-04-10 19:52:42', '2011-04-10 19:52:42', 1, 1, NULL, 1, 'blog'),
(14, 'Privacy Policy', '', 1, 1, '', '2011-04-10 20:47:45', '2011-04-10 20:47:45', 0, 0, 0, 7, 1, 1, '', '2011-04-10 20:47:45', '2011-04-10 20:47:45', 1, 1, NULL, 1, 'privacy-policy'),
(15, 'Shopping Cart', '', 1, 1, '', '2011-05-22 00:00:00', '2011-05-22 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 20:49:00', '2011-05-22 10:06:42', 1, 1, NULL, 1, 'shopping-cart'),
(16, 'Photobook Reviews and Comments', '', 1, 1, '', '2011-05-22 00:00:00', '2011-05-22 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-04-10 20:51:41', '2011-05-22 12:16:10', 1, 1, NULL, 1, 'photobook-reviews-and-comments'),
(17, 'Photobook Preview', '', 1, 1, '', '2011-05-21 00:00:00', '2011-05-21 00:00:00', 0, 0, 0, 7, 1, 1, '', '2011-05-21 17:42:36', '2011-05-21 20:54:53', 1, 1, NULL, 1, 'photobook-preview'),
(18, 'Order Confirmation', 'Order Confirmation Page', 1, 1, '', '2011-05-23 21:51:24', '2011-05-23 21:51:24', 0, 0, 0, 7, 1, 1, '', '2011-05-23 21:51:25', '2011-05-23 21:51:25', 1, 1, NULL, 1, 'order-confirmation');

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
(1, 'Default footer', 3, '', 1, 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1, 1, NULL, 1),
(2, 'Home footer', 5, '', 1, 0, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1, 1, NULL, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `page_header`
--

INSERT INTO `page_header` (`id`, `title`, `template_id`, `description`, `category_id`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 'Default header', 2, '', 1, 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1, 1, NULL, 1),
(2, 'Home page', 4, '', 1, 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1, 1, NULL, 1),
(3, 'Blog Header', 6, '', 1, 1, '2011-04-10 19:51:43', '2011-04-10 19:51:43', 1, 1, NULL, 1);

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
  KEY `layoutindex_idx` (`page_id`,`admin_table_id`,`template_id`),
  KEY `template_id_idx` (`template_id`),
  KEY `page_id_idx` (`page_id`),
  KEY `admin_content_type_id_idx` (`admin_content_type_id`),
  KEY `admin_section_id_idx` (`admin_section_id`),
  KEY `admin_table_id_idx` (`admin_table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `page_layout`
--

INSERT INTO `page_layout` (`id`, `item`, `admin_content_type_id`, `page_id`, `admin_table_id`, `admin_section_id`, `template_id`, `section_seq`, `item_seq`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '4', 1, 15, 22, 2, 3, 0, '2011-04-10 01:01:43', '2011-04-10 01:25:28', NULL),
(2, 27, '1', 1, 15, 22, 2, 3, 1, '2011-04-10 01:01:43', '2011-04-13 04:05:51', '2011-04-13 04:05:51'),
(3, 16, '1', 1, 15, 22, 2, 3, 1, '2011-04-10 01:01:43', '2011-04-10 14:58:40', NULL),
(4, 3, '4', 1, 15, 4, 2, 2, 1, '2011-04-10 01:01:43', '2011-04-13 04:05:51', NULL),
(5, 17, '1', 1, 15, 3, 2, 1, 0, '2011-04-10 01:01:43', '2011-04-13 04:05:51', '2011-04-13 04:05:51'),
(6, 25, '1', 1, 15, 1, 2, 0, 0, '2011-04-10 01:01:43', '2011-04-10 01:25:28', NULL),
(7, 2, '4', 1, 59, 17, 3, 0, 1, '2011-04-10 01:31:35', '2011-05-15 23:35:35', NULL),
(8, 27, '1', 1, 59, 18, 3, 1, 0, '2011-04-10 01:31:35', '2011-04-10 01:31:35', NULL),
(9, 17, '2', 1, 59, 18, 3, 1, 1, '2011-04-10 01:31:35', '2011-04-10 01:31:35', NULL),
(10, 18, '2', 1, 15, 24, 2, 4, 0, '2011-04-10 01:55:31', '2011-04-10 01:55:31', NULL),
(11, 35, '1', 1, 15, 3, 2, 1, 0, '2011-04-10 02:14:28', '2011-04-10 02:14:28', NULL),
(12, 36, '1', 1, 15, 22, 2, 3, 1, '2011-04-10 03:22:09', '2011-04-13 04:05:51', '2011-04-13 04:05:51'),
(13, 6, '2', 1, 33, 25, 4, 0, 2, '2011-04-10 03:37:51', '2011-04-10 11:05:26', NULL),
(14, 3, '3', 1, 33, 25, 4, 0, 0, '2011-04-10 03:38:25', '2011-04-10 11:05:26', NULL),
(15, 36, '1', 1, 33, 25, 4, 0, 1, '2011-04-10 11:05:26', '2011-04-10 11:05:26', NULL),
(16, 1, '2', 4, 33, 21, 1, 2, 0, '2011-04-10 12:05:58', '2011-04-10 12:05:58', NULL),
(17, 3, '3', 4, 33, 25, 1, 3, 0, '2011-04-10 12:05:58', '2011-04-10 12:05:58', NULL),
(18, 36, '1', 4, 33, 25, 1, 3, 1, '2011-04-10 12:05:58', '2011-04-10 12:05:58', NULL),
(19, 23, '1', 3, 33, 21, 1, 2, 0, '2011-04-10 12:44:55', '2011-04-10 12:44:55', NULL),
(20, 3, '3', 3, 33, 25, 1, 3, 0, '2011-04-10 12:44:55', '2011-04-10 12:44:55', NULL),
(21, 6, '2', 1, 33, 8, 7, 1, 0, '2011-04-10 12:57:38', '2011-04-16 00:40:39', NULL),
(22, 3, '3', 1, 33, 25, 7, 0, 0, '2011-04-10 12:57:38', '2011-04-16 00:40:39', NULL),
(23, 36, '1', 1, 33, 25, 7, 0, 1, '2011-04-10 12:57:38', '2011-04-16 00:40:39', NULL),
(24, 4, '1', 2, 33, 8, 7, 1, 0, '2011-04-10 13:00:25', '2011-05-22 23:31:39', NULL),
(25, 3, '3', 2, 33, 25, 7, 0, 0, '2011-04-10 13:00:25', '2011-05-23 00:36:06', '2011-05-23 00:36:06'),
(26, 23, '1', 3, 33, 8, 7, 1, 1, '2011-04-10 13:01:00', '2011-05-22 23:28:38', NULL),
(27, 3, '3', 3, 33, 25, 7, 0, 0, '2011-04-10 13:01:00', '2011-05-22 23:28:38', NULL),
(28, 36, '1', 3, 33, 25, 7, 0, 1, '2011-04-10 13:09:52', '2011-05-22 23:28:38', NULL),
(29, 19, '2', 3, 33, 8, 7, 1, 0, '2011-04-10 14:02:03', '2011-05-22 23:28:38', NULL),
(30, 1, '2', 4, 33, 8, 7, 1, 0, '2011-04-10 14:02:56', '2011-04-16 00:43:58', NULL),
(31, 3, '3', 4, 33, 25, 7, 0, 0, '2011-04-10 14:02:56', '2011-04-16 00:43:58', NULL),
(32, 36, '1', 4, 33, 25, 7, 0, 1, '2011-04-10 14:02:56', '2011-04-16 00:43:58', NULL),
(33, 2, '2', 10, 33, 8, 7, 1, 0, '2011-04-10 18:54:25', '2011-04-16 00:44:17', NULL),
(34, 3, '3', 10, 33, 25, 7, 2, 0, '2011-04-10 18:54:25', '2011-05-21 20:25:35', '2011-05-21 20:25:35'),
(35, 36, '1', 10, 33, 25, 7, 0, 1, '2011-04-10 18:54:25', '2011-04-16 00:44:17', NULL),
(36, 4, '2', 7, 33, 8, 7, 1, 0, '2011-04-10 18:55:11', '2011-04-16 00:44:54', NULL),
(37, 3, '3', 7, 33, 25, 7, 2, 0, '2011-04-10 18:55:11', '2011-05-22 23:29:03', '2011-05-22 23:29:03'),
(38, 36, '1', 7, 33, 25, 7, 0, 1, '2011-04-10 18:55:11', '2011-04-16 00:44:54', NULL),
(39, 5, '2', 8, 33, 8, 7, 1, 0, '2011-04-10 18:55:34', '2011-04-16 00:45:10', NULL),
(40, 3, '3', 8, 33, 25, 7, 2, 0, '2011-04-10 18:55:34', '2011-05-22 23:54:25', '2011-05-22 23:54:25'),
(41, 36, '1', 8, 33, 25, 7, 0, 1, '2011-04-10 18:55:34', '2011-04-16 00:45:10', NULL),
(42, 11, '2', 9, 33, 8, 7, 1, 0, '2011-04-10 18:57:29', '2011-04-16 00:45:45', NULL),
(43, 3, '3', 9, 33, 25, 7, 2, 0, '2011-04-10 18:57:29', '2011-05-22 23:53:26', '2011-05-22 23:53:26'),
(44, 36, '1', 9, 33, 25, 7, 0, 1, '2011-04-10 18:57:29', '2011-04-16 00:45:45', NULL),
(45, 15, '2', 11, 33, 8, 7, 1, 0, '2011-04-10 18:58:07', '2011-04-16 00:47:01', NULL),
(46, 3, '3', 11, 33, 25, 7, 2, 0, '2011-04-10 18:58:07', '2011-05-22 23:55:57', '2011-05-22 23:55:57'),
(47, 36, '1', 11, 33, 25, 7, 0, 1, '2011-04-10 18:58:07', '2011-04-16 00:47:01', NULL),
(48, 2, '3', 11, 33, 25, 7, 0, 0, '2011-04-10 19:25:30', '2011-05-22 23:55:57', '2011-05-22 23:55:57'),
(49, 2, '3', 9, 33, 25, 7, 0, 0, '2011-04-10 19:26:15', '2011-04-16 00:45:45', NULL),
(50, 2, '3', 8, 33, 25, 7, 0, 0, '2011-04-10 19:26:41', '2011-05-22 23:54:25', '2011-05-22 23:54:25'),
(51, 2, '3', 7, 33, 25, 7, 0, 0, '2011-04-10 19:26:52', '2011-04-16 00:44:54', NULL),
(52, 2, '3', 10, 33, 25, 7, 0, 0, '2011-04-10 19:27:06', '2011-05-21 20:25:35', '2011-05-21 20:25:35'),
(53, 35, '1', 3, 15, 3, 6, 0, 0, '2011-04-10 20:12:28', '2011-04-10 20:12:28', NULL),
(54, 3, '4', 3, 15, 4, 6, 1, 0, '2011-04-10 20:12:28', '2011-04-10 20:12:28', NULL),
(55, 1, '4', 3, 15, 22, 6, 2, 0, '2011-04-10 20:12:28', '2011-04-10 20:12:28', NULL),
(56, 16, '1', 3, 15, 22, 6, 2, 1, '2011-04-10 20:12:28', '2011-04-10 20:12:28', NULL),
(57, 18, '2', 3, 15, 24, 6, 3, 0, '2011-04-10 20:12:28', '2011-04-10 20:12:28', NULL),
(58, 9, '2', 14, 33, 8, 7, 1, 0, '2011-04-10 20:48:22', '2011-05-22 23:52:39', NULL),
(59, 2, '3', 14, 33, 25, 7, 0, 0, '2011-04-10 20:48:22', '2011-05-22 23:52:39', NULL),
(60, 36, '1', 14, 33, 25, 7, 0, 1, '2011-04-10 20:48:22', '2011-05-22 23:52:39', NULL),
(61, 14, '2', 15, 33, 8, 7, 1, 0, '2011-04-10 20:49:29', '2011-05-23 19:59:06', '2011-05-23 19:59:06'),
(62, 2, '3', 15, 33, 25, 7, 0, 0, '2011-04-10 20:49:29', '2011-05-23 19:59:06', '2011-05-23 19:59:06'),
(63, 36, '1', 15, 33, 25, 7, 2, 1, '2011-04-10 20:49:29', '2011-05-23 19:59:06', NULL),
(64, 13, '2', 16, 33, 8, 7, 1, 0, '2011-04-10 20:52:06', '2011-05-22 16:35:27', '2011-05-22 16:35:27'),
(65, 2, '3', 16, 33, 25, 7, 0, 0, '2011-04-10 20:52:06', '2011-05-22 16:35:27', NULL),
(66, 36, '1', 16, 33, 25, 7, 0, 1, '2011-04-10 20:52:06', '2011-05-22 16:35:27', NULL),
(67, 3, '3', 5, 33, 25, 7, 0, 0, '2011-04-10 21:45:21', '2011-05-17 07:44:48', NULL),
(68, 36, '1', 5, 33, 25, 7, 0, 1, '2011-04-10 21:45:21', '2011-05-17 07:44:48', NULL),
(69, 6, '1', 1, 15, 4, 2, 2, 0, '2011-04-13 04:05:51', '2011-04-13 04:05:51', NULL),
(70, 22, '4', 1, 33, 9, 7, 2, 0, '2011-04-16 00:40:39', '2011-04-16 00:40:39', NULL),
(71, 22, '4', 16, 33, 9, 7, 2, 1, '2011-04-16 00:41:33', '2011-05-22 16:35:27', NULL),
(72, 22, '4', 4, 33, 9, 7, 2, 1, '2011-04-16 00:43:58', '2011-05-22 23:26:41', NULL),
(73, 22, '4', 10, 33, 9, 7, 2, 1, '2011-04-16 00:44:17', '2011-05-21 20:25:35', NULL),
(74, 22, '4', 7, 33, 9, 7, 2, 0, '2011-04-16 00:44:54', '2011-04-16 00:44:54', NULL),
(75, 22, '4', 8, 33, 9, 7, 2, 1, '2011-04-16 00:45:10', '2011-05-22 23:30:48', NULL),
(76, 22, '4', 9, 33, 9, 7, 2, 1, '2011-04-16 00:45:45', '2011-05-22 23:53:26', NULL),
(77, 22, '4', 15, 33, 9, 7, 1, 1, '2011-04-16 00:46:00', '2011-05-23 19:59:06', NULL),
(78, 22, '4', 11, 33, 9, 7, 2, 1, '2011-04-16 00:47:01', '2011-05-22 23:33:29', NULL),
(79, 20, '2', 1, 59, 17, 3, 0, 0, '2011-05-15 23:35:35', '2011-05-15 23:35:35', NULL),
(80, 30, '1', 5, 33, 8, 7, 1, 0, '2011-05-17 07:44:48', '2011-05-17 07:44:48', NULL),
(81, 31, '1', 5, 33, 9, 7, 2, 0, '2011-05-17 07:50:07', '2011-05-17 07:50:07', NULL),
(82, 22, '4', 5, 33, 9, 7, 2, 1, '2011-05-21 10:04:56', '2011-05-21 10:04:56', NULL),
(83, 3, '3', 17, 33, 25, 7, 0, 0, '2011-05-21 17:47:33', '2011-05-21 17:47:33', NULL),
(84, 31, '1', 17, 33, 9, 7, 2, 0, '2011-05-21 17:47:33', '2011-05-21 17:47:33', NULL),
(85, 22, '4', 17, 33, 9, 7, 2, 1, '2011-05-21 17:47:33', '2011-05-21 17:47:33', NULL),
(86, 36, '1', 17, 33, 25, 7, 0, 1, '2011-05-21 18:01:18', '2011-05-21 18:01:18', NULL),
(87, 3, '3', 12, 33, 25, 7, 2, 0, '2011-05-21 20:18:35', '2011-05-24 22:22:42', NULL),
(88, 36, '1', 12, 33, 25, 7, 2, 1, '2011-05-21 20:18:35', '2011-05-24 22:22:42', NULL),
(89, 22, '4', 12, 33, 9, 7, 1, 1, '2011-05-21 20:18:35', '2011-05-24 22:22:42', NULL),
(90, 22, '3', 10, 33, 25, 7, 0, 0, '2011-05-21 20:25:35', '2011-05-21 20:25:35', NULL),
(91, 31, '1', 10, 33, 9, 7, 2, 0, '2011-05-21 20:25:35', '2011-05-21 20:25:35', NULL),
(92, 29, '1', 16, 33, 8, 7, 1, 0, '2011-05-22 08:35:45', '2011-05-22 16:35:27', NULL),
(93, 10, '1', 15, 33, 8, 7, 0, 0, '2011-05-22 10:07:44', '2011-05-23 19:59:06', NULL),
(94, 31, '1', 15, 33, 9, 7, 1, 0, '2011-05-22 10:07:44', '2011-05-23 19:59:06', NULL),
(95, 1, '4', 15, 33, 25, 7, 0, 0, '2011-05-22 10:07:44', '2011-05-23 19:59:06', '2011-05-23 19:59:06'),
(96, 1, '3', 15, 33, 25, 7, 2, 0, '2011-05-22 10:12:02', '2011-05-23 19:59:06', NULL),
(97, 31, '1', 16, 33, 9, 7, 2, 0, '2011-05-22 16:35:27', '2011-05-22 16:35:27', NULL),
(98, 31, '1', 4, 33, 9, 7, 2, 0, '2011-05-22 23:26:41', '2011-05-22 23:26:41', NULL),
(99, 31, '1', 3, 33, 9, 7, 2, 0, '2011-05-22 23:28:38', '2011-05-23 00:27:57', '2011-05-23 00:27:57'),
(100, 22, '4', 3, 33, 9, 7, 2, 0, '2011-05-22 23:28:38', '2011-05-23 00:27:57', NULL),
(101, 31, '1', 7, 33, 9, 7, 2, 1, '2011-05-22 23:29:03', '2011-05-22 23:29:03', NULL),
(102, 31, '1', 8, 33, 9, 7, 2, 0, '2011-05-22 23:30:48', '2011-05-22 23:30:48', NULL),
(103, 31, '1', 2, 33, 9, 7, 2, 0, '2011-05-22 23:31:39', '2011-05-23 00:36:06', '2011-05-23 00:36:06'),
(104, 31, '1', 12, 33, 9, 7, 1, 0, '2011-05-22 23:33:15', '2011-05-24 22:22:42', NULL),
(105, 31, '1', 11, 33, 9, 7, 2, 0, '2011-05-22 23:33:29', '2011-05-22 23:33:29', NULL),
(106, 31, '1', 14, 33, 9, 7, 2, 0, '2011-05-22 23:52:39', '2011-05-22 23:52:39', NULL),
(107, 22, '4', 14, 33, 9, 7, 2, 1, '2011-05-22 23:52:39', '2011-05-22 23:52:39', NULL),
(108, 31, '1', 9, 33, 9, 7, 2, 0, '2011-05-22 23:53:26', '2011-05-22 23:53:26', NULL),
(109, 22, '3', 8, 33, 25, 7, 0, 0, '2011-05-22 23:54:25', '2011-05-22 23:54:25', NULL),
(110, 1, '3', 2, 33, 25, 7, 0, 0, '2011-05-22 23:55:13', '2011-05-22 23:55:13', NULL),
(111, 36, '1', 2, 33, 25, 7, 0, 1, '2011-05-22 23:55:13', '2011-05-22 23:55:13', NULL),
(112, 22, '4', 2, 33, 9, 7, 2, 0, '2011-05-22 23:55:13', '2011-05-23 00:34:27', NULL),
(113, 22, '3', 11, 33, 25, 7, 0, 0, '2011-05-22 23:55:57', '2011-05-22 23:55:57', NULL),
(114, 33, '1', 2, 33, 8, 7, 1, 1, '2011-05-23 00:30:42', '2011-05-23 00:36:06', '2011-05-23 00:36:06'),
(115, 37, '1', 15, 33, 8, 7, 0, 1, '2011-05-23 19:59:06', '2011-05-23 19:59:06', NULL),
(116, 31, '1', 18, 33, 9, 7, 1, 0, '2011-05-23 21:52:11', '2011-05-23 21:52:11', NULL),
(117, 22, '4', 18, 33, 9, 7, 1, 1, '2011-05-23 21:52:11', '2011-05-23 21:52:11', NULL),
(118, 1, '3', 18, 33, 25, 7, 2, 0, '2011-05-23 21:52:11', '2011-05-23 21:52:11', NULL),
(119, 36, '1', 18, 33, 25, 7, 2, 1, '2011-05-23 21:52:11', '2011-05-23 21:52:11', NULL),
(120, 38, '1', 18, 33, 8, 7, 0, 0, '2011-05-23 23:39:59', '2011-05-23 23:39:59', NULL),
(121, 10, '2', 12, 33, 8, 7, 0, 0, '2011-05-24 22:22:42', '2011-05-24 22:22:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE IF NOT EXISTS `portfolio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  `photo_count` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `note` text,
  `event_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `is_feature` tinyint(4) DEFAULT '1',
  `is_complete` tinyint(4) DEFAULT '0',
  `image_file` varchar(255) DEFAULT NULL,
  `album_dir` varchar(45) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `portfolio_sluggable_idx` (`slug`,`title`,`admin_subsite_id`),
  KEY `event_id_idx` (`event_id`),
  KEY `role_id_idx` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `title`, `description`, `keyword`, `page_count`, `photo_count`, `role_id`, `note`, `event_id`, `is_active`, `is_feature`, `is_complete`, `image_file`, `album_dir`, `url`, `created_at`, `updated_at`, `admin_subsite_id`, `slug`) VALUES
(1, 'Kanyin & Pele', 'odiase1', 'odiase1', 70, 193, 1, '', 1, 1, 1, 0, '/photography/media/portfolio/photobook/odiase1/thumb.gif', 'odiase1', NULL, '2006-11-11 00:00:00', '2011-05-21 23:24:41', 1, 'kanyin-pele'),
(2, 'Alero weds Pele ', 'odiase2', 'odiase2', 70, 95, 1, '', 2, 1, 1, 0, '/photography/media/portfolio/photobook/odiase2/thumb.jpg', 'odiase2', NULL, '2006-11-11 00:00:00', '2011-05-21 23:24:42', 1, 'alero-weds-pele'),
(3, 'Patricia & Isaac', 'madengu', 'madengu', 78, 259, 1, 'Our dream has always been to be trend and pacesetters in everything we do. 16 June 2007 was a mark and with the photographs that Rhema Studio took and produced, it is a mark that will be remembered. All our family and friends cannot stop looking at the photos, it has been by far the best work we have encounted in this day in age. Let us Authenticate Rhema Studios, they are legends in the making, a mark that will never be erased, totally and truely legends', 3, 1, 1, 0, '/photography/media/portfolio/photobook/madengu/thumb.jpg', 'madengu', NULL, '2007-06-16 00:00:00', '2011-05-21 23:24:41', 1, 'patricia-isaac'),
(4, 'Rose weds Ugo', 'inyama', 'inyama', 50, 124, 1, 'Rhema Studio produces such a masterpiece, an amazing work of art. Your products and services have got our highest recommendation. I love our photobook. The picture selections were outstanding. Though the pictures were retrieved from negatives that were over over 4 yrs old, the outcome is so lovely.', 4, 1, 1, 0, '/photography/media/portfolio/photobook/inyama/thumb.gif', 'inyama', NULL, '2002-08-24 00:00:00', '2011-05-21 23:24:42', 1, 'rose-weds-ugo'),
(5, 'Itoro weds Edirin', 'arigbe', 'arigbe', 70, 171, 1, '', 5, 1, 1, 0, '/photography/media/portfolio/photobook/arigbe/thumb.jpg', 'arigbe', NULL, '2007-06-16 00:00:00', '2011-05-21 23:24:41', 1, 'itoro-weds-edirin'),
(6, 'Wedding Gift', 'Susan Gardner&#039;s Wedding Gift', 'gardner', 50, 0, 1, '', 6, 1, 1, 0, '/photography/media/portfolio/photobook/gardner/thumb.jpg', 'gardner', NULL, '2007-07-14 00:00:00', '2011-05-21 23:24:41', 1, 'wedding-gift'),
(7, 'Leslie & Zainab', 'shyllon', 'shyllon', 50, 120, 1, '', 7, 1, 1, 0, '/photography/media/portfolio/photobook/shyllon/thumb.jpg', 'shyllon', NULL, '1996-04-10 00:00:00', '2011-05-21 23:24:42', 1, 'leslie-zainab'),
(8, '@ El-Shaddai', 'Bakang weds Bayo', 'oniye', 78, 305, 1, '', 8, 1, 1, 0, '/photography/media/portfolio/photobook/oniye/thumb.gif', 'oniye', NULL, '2007-07-14 00:00:00', '2011-05-21 23:24:41', 1, 'el-shaddai'),
(9, 'Lihle weds Sipho ', 'Thembe weds Sipho', 'moyo1', 30, 81, 1, '', 9, 1, 1, 0, '/photography/media/portfolio/photobook/moyo1/thumb.gif', 'moyo1', NULL, '2007-08-25 00:00:00', '2011-05-21 23:24:41', 1, 'lihle-weds-sipho'),
(10, 'Thembe & Sipho', 'moyo2', 'moyo2', 78, 281, 1, '', 10, 1, 1, 0, '/photography/media/portfolio/photobook/moyo2/thumb.gif', 'moyo2', NULL, '2007-09-08 00:00:00', '2011-05-21 23:24:41', 1, 'thembe-sipho'),
(11, 'Alero weds Edirin', 'arigbe2', 'arigbe2', 70, 171, 1, '', 11, 1, 1, 0, '/photography/media/portfolio/photobook/arigbe2/thumb.jpg', 'arigbe2', NULL, '2007-06-09 00:00:00', '2011-05-21 23:24:41', 1, 'alero-weds-edirin'),
(12, 'Mmapula Tsietso', 'tsietso', 'tsietso', 50, 124, 1, '', 12, 1, 1, 0, '/photography/media/portfolio/photobook/tsietso/thumb.jpg', 'tsietso', NULL, '2007-11-10 00:00:00', '2011-05-21 23:24:40', 1, 'mmapula-tsietso'),
(13, 'Tim weds Joanna', 'grimshaw', 'grimshaw', 78, 296, 1, '', 13, 1, 1, 0, '/photography/media/portfolio/photobook/grimshaw/thumb.gif', 'grimshaw', NULL, '2007-10-20 00:00:00', '2011-05-21 23:24:40', 1, 'tim-weds-joanna'),
(14, 'Dominic & Sally', 'shonhiwa', 'shonhiwa', 70, 284, 1, '', 14, 1, 1, 0, '/photography/media/portfolio/photobook/shonhiwa/thumb.gif', 'shonhiwa', NULL, '2007-12-01 00:00:00', '2011-05-21 23:24:40', 1, 'dominic-sally'),
(15, 'Brendan Mosweu', 'mosweu', 'mosweu', 50, 0, 1, '', 15, 1, 1, 0, '/photography/media/portfolio/photobook/mosweu/thumb.jpg', 'mosweu', NULL, '2008-02-16 00:00:00', '2011-05-21 23:20:48', 1, 'brendan-mosweu'),
(16, 'Jaz & Aswinder', 'singh', 'singh', 78, 200, 1, '', 16, 1, 1, 0, '/photography/media/portfolio/photobook/singh/thumb.gif', 'singh', NULL, '2007-06-17 00:00:00', '2011-05-21 23:24:41', 1, 'jaz-aswinder'),
(17, 'Memory & Haroon', 'rashid', 'rashid', 98, 210, 1, 'One of our favourite things about our photobook is the reaction it always gets. Our family and friends cannot believe that we have something so beautiful and professionally made which perfectly captures the best moments of our special day.\r\nThe photobook is not just a photo-album. It&#039;s a work of art. Perfectly and attentively done right down to the finest detail, we are amazed at the quality.\r\nHaroon and Memory Rashid', 17, 1, 1, 0, '/photography/media/portfolio/photobook/rashid/thumb.gif', 'rashid', NULL, '2008-05-02 00:00:00', '2011-05-21 23:20:48', 1, 'memory-haroon'),
(18, 'Dr. & Mrs. Ajulo ', 'ajulo', 'ajulo', 98, 200, 1, '', 18, 1, 1, 0, '/photography/media/portfolio/photobook/ajulo/thumb.gif', 'ajulo', NULL, '2008-07-19 00:00:00', '2011-05-21 23:20:47', 1, 'dr-mrs-ajulo'),
(19, 'Nkeiru weds Ilo', 'akubuo', 'akubuo', 98, 0, 1, '', 19, 1, 1, 0, '/photography/media/portfolio/photobook/akubuo/thumb.gif', 'akubuo', NULL, '2008-08-16 00:00:00', '2011-05-21 23:20:48', 1, 'nkeiru-weds-ilo'),
(20, 'Inspire 2007', 'Inspire 2007', 'inspire', 78, 0, 1, '', 20, 1, 1, 0, '/photography/media/portfolio/photobook/inspire/thumb.jpg', 'inspire', NULL, '2007-08-10 00:00:00', '2011-05-21 23:24:41', 1, 'inspire-2007'),
(21, 'Inspire 2007', 'Inspire 08', 'inspire2', 78, 0, 1, '', 21, 1, 1, 0, '/photography/media/portfolio/photobook/inspire2/thumb.jpg', 'inspire2', NULL, '2007-08-10 00:00:00', '2011-05-21 23:24:41', 1, 'inspire-2007-1'),
(22, 'Fouzia & Joinal', 'Fozia weds Joinal', 'fouzia', 98, 319, 1, '', 22, 1, 1, 0, '/photography/media/portfolio/photobook/fouzia/thumb.png', 'fouzia', NULL, '2008-08-24 00:00:00', '2011-05-21 23:20:48', 1, 'fouzia-joinal'),
(23, 'Change 2008', 'Change 2008', 'change08', 98, 188, 1, '', 23, 1, 1, 0, '/photography/media/portfolio/photobook/change08/thumb.jpg', 'change08', NULL, '2008-07-23 00:00:00', '2011-05-21 23:20:48', 1, 'change-2008'),
(24, 'Reflection 2008', 'Reflection 2008', 'reflection08', 70, 108, 1, '', 24, 1, 1, 0, '/photography/media/portfolio/photobook/reflection08/thumb.jpg', 'reflection08', NULL, '2008-05-23 00:00:00', '2011-05-21 23:20:48', 1, 'reflection-2008'),
(25, 'Glamour & Style', 'Glamour & Style', 'glamour', 0, 27, 1, 'Onsite', 25, 1, 1, 0, '/photography/media/portfolio/photobook/glamour/thumb.jpg', 'glamour', NULL, '2008-10-25 00:00:00', '2011-05-21 23:20:47', 1, 'glamour-style'),
(26, 'Joanna & Tim', 'Joanna and Tim', 'grimshaw2', 70, 180, 1, '', 26, 1, 1, 0, '/photography/media/portfolio/photobook/grimshaw2/thumb.png', 'grimshaw2', NULL, '2007-10-20 00:00:00', '2011-05-21 23:24:41', 1, 'joanna-tim'),
(27, 'Cristina and Didier', 'Cristina weds Didier', 'pennine', 98, 240, 1, 'Thanks very much for the excellent work you did in putting together the photobooks for us, they look superb and they actually exceeded our expectations. The quality of the photobooks is outstanding, from the cover, to the interior design and to the thickness of the book itself all contributes to a fantastic memory of our wedding day.\r\nWe found your company to be very professional and offering a very friendly service and we very much appreciated your constant contact and information on how the photobooks were developing and what the next steps were. We&#039;ll be sure to recommend people to use your services, and I&#039;m sure we will be in touch again in the future.', 27, 1, 1, 0, '/photography/media/portfolio/photobook/pennine/thumb.gif', 'pennine', NULL, '2008-08-26 00:00:00', '2011-05-21 23:20:48', 1, 'cristina-and-didier'),
(28, 'Man08 Xmas Ball', 'Man08 Xmas Ball', 'man08', 50, 75, 1, '', 28, 1, 1, 0, '/photography/media/portfolio/photobook/man08/thumb.gif', 'man08', NULL, '2008-12-19 00:00:00', '2011-05-21 23:20:47', 1, 'man08-xmas-ball'),
(29, 'Brad08 Xmas Ball', 'Brad08 Xmas Ball', 'brad08', 0, 0, 1, '', 29, 1, 1, 0, '/photography/media/portfolio/photobook/brad08/thumb.gif', 'brad08', NULL, '2008-12-20 00:00:00', '2011-05-21 23:20:47', 1, 'brad08-xmas-ball'),
(30, 'Brad07 Xmas Ball', 'Brad07 Xmas Ball', 'brad07', 0, 0, 1, '', 30, 1, 1, 0, '/photography/media/portfolio/photobook/brad07/thumb.gif', 'brad07', NULL, '2007-12-12 00:00:00', '2011-05-21 23:24:40', 1, 'brad07-xmas-ball'),
(31, 'Man 20up', '20&#039;s Up Man07', 'man20up07', 0, 0, 1, '', 31, 1, 1, 0, '/photography/media/portfolio/photobook/man20up07/thumb.jpg', 'man20up07', NULL, '2007-04-21 16:40:00', '2011-05-21 23:24:41', 1, 'man-20up'),
(32, 'CFP Dec 07', 'CFP Dec 07', 'cfpdec07', 0, 0, 1, '', 32, 1, 1, 0, '/photography/media/portfolio/photobook/cfpdec07/thumb.gif', 'cfpdec07', NULL, '2007-12-01 00:00:00', '2011-05-21 23:24:40', 1, 'cfp-dec-07'),
(33, 'Kate&#039;s 90th', 'Kate&#039;s 90th', 'kate', 0, 0, 1, '', 33, 1, 1, 0, '/photography/media/portfolio/photobook/kate/thumb.jpg', 'kate', NULL, '2008-09-20 00:00:00', '2011-05-21 23:20:48', 1, 'kate-039-s-90th'),
(34, 'Man08 Faith', 'Faith Conf 08', 'manfc08', 0, 0, 1, '', 34, 1, 1, 0, '/photography/media/portfolio/photobook/manfc08/thumb.gif', 'manfc08', NULL, '2008-09-20 07:31:33', '2011-05-21 23:20:48', 1, 'man08-faith'),
(35, 'CFP Mar 2007', 'CFP Mar 07', 'cfpmar07', 0, 0, 1, '', 35, 1, 1, 0, '/photography/media/portfolio/photobook/cfpmar07/thumb.gif', 'cfpmar07', NULL, '2007-03-04 00:00:00', '2011-05-21 23:24:41', 1, 'cfp-mar-2007'),
(36, 'CFP Oct 08', 'CFP Oct 08', 'cfpoct08', 0, 0, 1, '', 36, 1, 1, 0, '/photography/media/portfolio/photobook/cfpoct08/thumb.gif', 'cfpoct08', NULL, '2008-11-09 00:00:00', '2011-05-21 23:20:47', 1, 'cfp-oct-08'),
(37, 'Victory 07', 'Victory 07', 'vic07', 0, 0, 1, '', 37, 1, 1, 0, '/photography/media/portfolio/photobook/vic07/thumb.jpg', 'vic07', NULL, '2007-07-15 00:00:00', '2011-05-21 23:24:41', 1, 'victory-07'),
(38, 'Omare&#039;s 50th', 'Omare&#039;s 50th', 'omare', 18, 47, 1, '', 38, 1, 1, 0, '/photography/media/portfolio/photobook/omare/thumb.gif', 'omare', NULL, '2008-09-12 00:00:00', '2011-05-21 23:20:48', 1, 'omare-039-s-50th'),
(39, 'Her Birthday', 'Her Birthday', 'bcoker', 22, 97, 1, '', 39, 1, 1, 0, '/photography/media/portfolio/photobook/bcoker/thumb.gif', 'bcoker', NULL, '2008-09-09 00:00:00', '2011-05-21 23:20:48', 1, 'her-birthday'),
(40, 'Zandile & Melusi', 'Zandile & Melusi', 'zandile', 0, 210, 1, '', 40, 1, 1, 0, '/photography/media/portfolio/photobook/zandile/thumb.gif', 'zandile', NULL, '2007-08-25 00:00:00', '2011-05-21 23:24:41', 1, 'zandile-melusi'),
(41, 'Pauline & Robert', 'Pauline & Robert', 'george', 0, 250, 1, '', 41, 1, 1, 0, '/photography/media/portfolio/photobook/george/thumb.jpg', 'george', NULL, '2008-08-30 00:00:00', '2011-05-21 23:20:48', 1, 'pauline-robert'),
(42, 'Thuli weds Gerald', 'Thuli & Gerald', 'thuli', 0, 195, 1, '', 42, 1, 1, 0, '/photography/media/portfolio/photobook/thuli/thumb.jpg', 'thuli', NULL, '2008-07-05 00:00:00', '2011-05-21 23:20:48', 1, 'thuli-weds-gerald'),
(43, 'Suki & Sukhi', 'Suki weds Sukhi', 'suki', 98, 185, 1, '', 43, 1, 1, 0, '/photography/media/portfolio/photobook/suki/thumb.gif', 'suki', NULL, '2008-09-28 07:37:34', '2011-05-21 23:20:48', 1, 'suki-sukhi'),
(44, 'Cathie weds Isaac', 'Cathie weds Isaac', 'odiase3', 58, 70, 1, '', 44, 1, 1, 0, '/photography/media/portfolio/photobook/odiase3/thumb.gif', 'odiase3', NULL, '2009-04-18 08:39:28', '2011-05-21 23:20:47', 1, 'cathie-weds-isaac'),
(45, 'Kevin & Kete', 'Kevin weds Mamokete', 'kevin', 98, 180, 1, '', 45, 1, 1, 0, '/photography/media/portfolio/photobook/kevin/thumb.gif', 'kevin', NULL, '2009-05-30 09:23:27', '2011-05-21 23:20:47', 1, 'kevin-kete'),
(46, 'Vince & Nkiru', 'Vincent and Nkiru', 'omenukwa', 78, 120, 1, '', 46, 1, 1, 0, '/photography/media/portfolio/photobook/omenukwa/thumb.gif', 'omenukwa', NULL, '2008-12-29 09:55:52', '2011-05-21 23:20:47', 1, 'vince-nkiru'),
(47, 'Kemi is 40', 'Kemi&#039;s 40th', 'obayelu', 66, 105, 1, '', 47, 1, 1, 0, '/photography/media/portfolio/photobook/obayelu/thumb.gif', 'obayelu', NULL, '2009-04-04 10:12:40', '2011-05-21 23:20:47', 1, 'kemi-is-40'),
(48, 'Chido & Vanessa', 'Chido & Vanessa', 'gideon', 98, 195, 1, '', 48, 1, 1, 0, '/photography/media/portfolio/photobook/gideon/thumb.gif', 'gideon', NULL, '2009-08-01 10:27:35', '2011-05-21 23:20:47', 1, 'chido-vanessa'),
(49, 'Bola and Tunde', 'Bola weds Tunde', 'oyinloye', 98, 0, 1, '', 49, 1, 1, 0, '/photography/media/portfolio/photobook/oyinloye/thumb.gif', 'oyinloye', NULL, '2010-08-14 01:05:37', '2011-05-21 23:20:47', 1, 'bola-and-tunde');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_comment`
--

CREATE TABLE IF NOT EXISTS `portfolio_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` text NOT NULL,
  `portfolio_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `rating` decimal(4,2) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `portfolio_id_idx` (`portfolio_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `portfolio_comment`
--

INSERT INTO `portfolio_comment` (`id`, `comment`, `portfolio_id`, `user_id`, `is_active`, `rating`, `ip_address`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, '<p>\n	Hi Guys I think your work is incredible. It is so excellent I think you should talk to the right people about developing the business. What you do is better than anything else I&#39;ve seen. At all. Anywhere. Ever!!</p>\n', 3, 2, 1, '5.00', '89.213.41.98', '2007-07-23 00:00:00', '2011-05-22 08:29:42', 1),
(2, '<p>\n	I&#39;ve checked out your website. Excellent work! I especially like the &#39;real moments&#39; you capture when no one knows you&#39;re shooting them. Really like the Ron Kenoly shots too.Keep up the good work!</p>\n', 36, 3, 1, '5.00', '81.159.35.97', '2007-07-19 00:00:00', '2011-05-22 08:30:05', 1),
(3, '<p>\n	hmm absolutely amazing piece of work..l was totally mesmerised by the sheer expertise shown by Rhema Studio..lm not getting married anytym soon but be assured of doin my pictures at my wedding..great work absolutely smashing!!</p>\n', 9, 4, 1, '4.00', '84.13.116.31', '2007-07-17 00:00:00', '2011-05-22 08:30:25', 1),
(4, 'Hi, i think this is a wonderful site filled with innovative ideas, inspiring stuff and great services. Please keep up the good work.', NULL, 5, 1, '4.00', '41.220.65.107\n', '2007-07-17 00:00:00', '2011-05-18 20:35:24', 1),
(5, 'execellent web and pics will give my recommendation to my pals, ps God''s blessing to you all', NULL, 6, 1, '4.00', '82.71.35.114\n', '2007-07-13 00:00:00', '2011-05-18 20:35:24', 1),
(6, '<p>\n	Rhema Studio produces such a masterpiece, an amazing work of art. Your products and services have got our highest recommendation. I love our photobook. The picture selections were outstanding. Though the pictures were retrieved from negatives that were over over 4 yrs old, the outcome is so lovely.</p>\n', 4, 7, 1, '5.00', '86.145.211.31', '2007-07-10 00:00:00', '2011-05-22 08:30:52', 1),
(7, 'I can''t help checking out your website everyday, its just too good. May God make your multi millionaires through your photography business. I''ve spent an hour looking at the photos.', NULL, 8, 1, '5.00', '86.145.211.31\n', '2007-07-10 00:00:00', '2011-05-18 20:35:24', 1),
(8, '<p>\n	Our dream has always been to be trend and pacesetters in everything we do. 16 June 2007 was a mark and with the photographs that Rhema Studio took and produced, it is a mark that will be remembered. All our family and friends cannot stop looking at the photos, it has been by far the best work we have encounted in this day in age. Let us Authenticate Rhema Studios, they are legends in the making, a mark that will never be erased, totally and truely legends</p>\n', 3, 9, 1, '4.00', '88.104.251.115', '2007-07-09 00:00:00', '2011-05-22 08:31:16', 1),
(9, '<p>\n	You are doing a fantastic, wonderful...job. It&#39;s just wow!!!This is state of the art design and services. May the Good Lord grant you more wisdom, knowledge and skills!I would strongly recommend Rhema Studio to anyone.Well done, keep it up!</p>\n', 3, 10, 1, '4.00', '86.140.91.10', '2007-07-09 00:00:00', '2011-05-22 08:31:35', 1),
(10, '<p>\n	Rhemastudio has an excellent site your design style is contemporary and fresh and most importantly is you offer bespoke service.kudos to you and keep up the faboulous job</p>\n', 49, 11, 1, '4.00', '81.149.18.181', '2007-07-04 00:00:00', '2011-05-22 08:32:01', 1),
(11, '<p>\n	Rhema studio definitely rocks!the creativity is mind blowing and the sky is not the limit but a starting point!Before we all know it u&#39;l b up there unparalled!More power to your elbow!</p>\n', 49, 12, 1, '5.00', '90.195.23.33', '2007-07-04 00:00:00', '2011-05-22 08:32:14', 1),
(12, 'I think I am most impressed by the quality of work and the service.....super.....I dont know how u do it....its awesome!', NULL, 13, 1, '5.00', '82.21.39.199\n', '2007-07-03 00:00:00', '2011-05-18 20:35:24', 1),
(13, 'It''s not just that the website is fantastic but the quality of services we at the litehouse recieve from Rhemastudios is not only excellent but also,bespoke.The photobook I believe is a must for everyone whowants to keep the memories of great events in their lives for the longest period possible.Keep the torch burning.Cheers,Olanike', NULL, 14, 1, '4.00', '86.145.210.39\n', '2007-07-03 00:00:00', '2011-05-18 20:35:24', 1),
(14, 'Pictures are top notch.... very professional. one of the best i have seen.... keep up the good work                   ', NULL, 15, 1, '5.00', '195.93.21.100\n', '2007-07-02 00:00:00', '2011-05-18 20:35:24', 1),
(15, 'I am loving ur site and I will be sure to contact u when I''ll be requiring ur services in the future   ', NULL, 16, 1, '5.00', '80.44.88.179\n', '2007-07-02 00:00:00', '2011-05-18 20:35:24', 1),
(16, 'Hi Rhemastudios.Your work is absolutely fantastic. Keep up the good work.Abena   ', NULL, 17, 1, '5.00', '90.198.191.203\n', '2007-06-30 00:00:00', '2011-05-18 20:35:24', 1),
(17, 'The quality and finishing of Rhema pictures are fantastic. I would highly recommend anyone who wants quality and authentic pictures to patronise RHEMA STUDIO.As for me and my family, Rhema Studio is the answer for our family photographs.', NULL, 18, 1, '5.00', '81.149.18.181\n', '2007-06-30 00:00:00', '2011-05-18 20:35:24', 1),
(18, 'The products that I have seen of Rhemastudio is absolutely outstanding; well arranged, clear, and strategic pictures!!! I''ll definitely recommend Rhemastudio to all, for very good pictures!!! Weldone!!!!!!!!! ', NULL, 19, 1, '5.00', '90.201.14.30\n', '2007-06-26 00:00:00', '2011-05-18 20:35:24', 1),
(19, 'You have been a very diligent man in what you do and therefore you won''t stand before mere men. And you works will really go far and wide. See you at the  top.         ', NULL, 20, 1, '5.00', '86.139.34.27\n', '2007-06-26 00:00:00', '2011-05-18 20:35:24', 1),
(20, '<p>\n	i think you&#39;re doing a very good job..the pictures and just the arrangement of the photbook is beautiful..out of this world. I like it.keep it up!</p>\n', 12, 21, 1, '5.00', '84.9.192.202', '2007-06-26 00:00:00', '2011-05-22 08:33:15', 1),
(21, 'The job that you are doing is great and really something people appreciate. Keep up the good work.', NULL, 22, 1, '4.00', '84.70.91.68\n', '2007-06-26 00:00:00', '2011-05-18 20:35:24', 1),
(22, 'You are doing a great job I like your product, keep doing what you doing and thank you for your help. Regards MJ', NULL, 23, 1, '4.00', '86.140.16.126\n', '2007-06-26 00:00:00', '2011-05-18 20:35:24', 1),
(23, 'Rhemastudio is absolutely wonderful. exquisite work, done with precision and passion. Pele is really talented. great stuff. keep it up, mate', NULL, 24, 1, '5.00', '86.140.16.126\n', '2007-06-25 00:00:00', '2011-05-18 20:35:25', 1),
(24, 'What a proffessional website and the quality is just second to none. Well done and keep up the great work, will dedinately recommend.. ', NULL, 25, 1, '5.00', '90.200.218.160', '2010-05-20 16:49:14', '2011-05-18 20:35:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_type`
--

CREATE TABLE IF NOT EXISTS `portfolio_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `portfolio_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '1',
  `is_admin` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `title`, `description`, `sequence`, `is_admin`, `created_at`, `updated_at`, `admin_subsite_id`, `created_by`, `updated_by`) VALUES
(1, 'Guest', 'Unregistered user and  users that are not logged in are regarded as guests.', 1, 0, '2011-04-09 02:49:58', '2011-04-09 02:49:58', 1, 1, 1),
(2, 'Member', 'Registered users with an online account.', 2, 0, '2011-04-09 02:49:59', '2011-04-09 02:49:59', 1, 1, 1),
(3, 'Admininstrator', 'Admin', 3, 0, '2011-04-09 02:49:59', '2011-04-09 02:49:59', 1, 1, 1),
(4, 'Super', 'Access to all menus and modules', 10, 0, '2011-04-09 02:49:59', '2011-04-09 02:49:59', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salutation`
--

CREATE TABLE IF NOT EXISTS `salutation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `salutation`
--

INSERT INTO `salutation` (`id`, `title`, `description`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'Mr.', 'Mister', '2011-04-26 16:11:40', '2011-04-26 16:11:46', 1),
(2, 'Mrs.', NULL, '2011-04-25 16:11:55', '2011-04-26 16:12:00', 1);

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
(1, 'General', NULL, '2011-04-26 16:12:24', '2011-04-26 16:12:28', 1);

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
(1, 'Default', '', 0, 0, '', '', 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1),
(2, 'header', '', 1, 0, '', '', 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1),
(3, 'Footer', '', 0, 1, '', '', 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1),
(4, 'Home Page', '', 0, 0, '', '', 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1),
(5, 'Home page footer', '', 0, 1, '', '', 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', 1),
(6, 'Header with no banner', 'Header without the banner', 1, 0, '', '', 1, '2011-04-09 03:03:05', '2011-04-10 19:51:28', 1),
(7, 'Large Left Column', '', 0, 0, '', '', 1, '2011-04-10 12:56:19', '2011-04-10 12:56:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `template_section`
--

CREATE TABLE IF NOT EXISTS `template_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_section_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `sequence` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `templateindex_idx` (`template_id`),
  KEY `admin_section_id_idx` (`admin_section_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `template_section`
--

INSERT INTO `template_section` (`id`, `admin_section_id`, `template_id`, `sequence`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20, 1, 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(2, 21, 1, 2, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(3, 19, 1, 3, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(4, 25, 1, 0, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(5, 4, 2, 2, '2011-04-09 03:03:05', '2011-04-10 01:19:07', NULL),
(6, 1, 2, 4, '2011-04-09 03:03:05', '2011-04-10 01:19:07', NULL),
(7, 23, 3, 3, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(8, 19, 3, 2, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(9, 3, 2, 3, '2011-04-09 03:03:05', '2011-04-10 01:19:07', NULL),
(10, 22, 2, 1, '2011-04-09 03:03:05', '2011-04-10 01:19:07', NULL),
(11, 17, 3, 0, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(12, 18, 3, 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(13, 23, 5, 2, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(14, 25, 4, 0, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(15, 18, 5, 1, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(16, 17, 5, 0, '2011-04-09 03:03:05', '2011-04-09 03:03:05', NULL),
(17, 20, 4, 1, '2011-04-09 03:03:05', '2011-04-10 03:39:37', '2011-04-10 03:39:37'),
(18, 21, 4, 2, '2011-04-09 03:03:05', '2011-04-10 03:39:37', '2011-04-10 03:39:37'),
(19, 13, 6, 0, '2011-04-09 03:03:05', '2011-04-10 19:49:46', '2011-04-10 19:49:46'),
(20, 14, 6, 1, '2011-04-09 03:03:05', '2011-04-10 19:49:46', '2011-04-10 19:49:46'),
(21, 15, 6, 2, '2011-04-09 03:03:05', '2011-04-10 19:49:46', '2011-04-10 19:49:46'),
(22, 24, 2, 0, '2011-04-09 21:13:31', '2011-04-09 21:13:31', NULL),
(23, 25, 7, 0, '2011-04-10 12:56:42', '2011-04-10 12:56:42', NULL),
(24, 8, 7, 1, '2011-04-10 12:56:42', '2011-04-10 12:56:42', NULL),
(25, 9, 7, 2, '2011-04-10 12:56:42', '2011-04-10 12:56:42', NULL),
(26, 24, 6, 0, '2011-04-10 19:48:57', '2011-04-10 19:48:57', NULL),
(27, 22, 6, 1, '2011-04-10 19:48:57', '2011-04-10 19:48:57', NULL),
(28, 4, 6, 2, '2011-04-10 19:48:57', '2011-04-10 19:48:57', NULL),
(29, 3, 6, 3, '2011-04-10 19:49:46', '2011-04-10 19:49:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `dob_at` date DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `password` varchar(40) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `company` varchar(80) DEFAULT NULL,
  `image_file` varchar(255) DEFAULT NULL,
  `website` varchar(80) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_blocked` tinyint(3) unsigned DEFAULT '0',
  `is_active` tinyint(4) DEFAULT '1',
  `is_admin` tinyint(4) DEFAULT '0',
  `is_member` tinyint(4) DEFAULT '0',
  `is_online` tinyint(4) DEFAULT '0',
  `visits` int(10) unsigned DEFAULT '0',
  `salutation_id` int(11) NOT NULL DEFAULT '1',
  `usergroup_id` int(10) unsigned DEFAULT '1',
  `admin_group_id` int(11) DEFAULT '1',
  `admin_menu_id` int(11) DEFAULT NULL,
  `is_mailing` tinyint(4) DEFAULT '1',
  `role_id` int(11) DEFAULT '1',
  `note` varchar(255) DEFAULT NULL,
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
  KEY `userindex_idx` (`email`,`lastname`,`dob_at`),
  KEY `role_id_idx` (`role_id`),
  KEY `admin_group_id_idx` (`admin_group_id`),
  KEY `admin_menu_id_idx` (`admin_menu_id`),
  KEY `salutation_id_idx` (`salutation_id`),
  KEY `usergroup_id_idx` (`usergroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `dob_at`, `nickname`, `gender`, `password`, `telephone`, `mobile`, `fax`, `email`, `company`, `image_file`, `website`, `start_at`, `end_at`, `is_blocked`, `is_active`, `is_admin`, `is_member`, `is_online`, `visits`, `salutation_id`, `usergroup_id`, `admin_group_id`, `admin_menu_id`, `is_mailing`, `role_id`, `note`, `created_at`, `updated_at`, `admin_subsite_id`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 'Pele', 'Odiase', 'odiaseo', '1974-04-08', NULL, 'male', 'testing', NULL, NULL, NULL, 'peleodiase@yahoo.co.uk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 5, 1, 1, 1, NULL, 1, 1, NULL, '2011-04-08 12:41:59', '2011-04-30 22:45:56', 1, NULL, 1, 1),
(2, 'michael', 'robinson', 'miker619@msn.com', NULL, NULL, 'male', 'miker619@msn.com', NULL, NULL, NULL, 'miker619@msn.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(3, 'Haroon', 'Rashid', 'haroon76@hotmail.co.uk', NULL, NULL, 'male', 'haroon76@hotmail.co.uk', NULL, NULL, NULL, 'haroon76@hotmail.co.uk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(4, 'Tapiwa', 'Ngoma', 'Tapie08@hotmail.com', NULL, NULL, 'male', 'Tapie08@hotmail.com', NULL, NULL, NULL, 'Tapie08@hotmail.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(5, 'Osa', 'Erebor', 'debosa652@yahoo.com', NULL, NULL, 'male', 'debosa652@yahoo.com', NULL, NULL, NULL, 'debosa652@yahoo.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(6, 'justine', 'James', 'kool2bme@netpiper.com', NULL, NULL, 'male', 'kool2bme@netpiper.com', NULL, NULL, NULL, 'kool2bme@netpiper.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(7, 'Rose', 'Inyama', 'ucheinyama@hotmail.com', NULL, NULL, 'male', 'ucheinyama@hotmail.com', NULL, NULL, NULL, 'ucheinyama@hotmail.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(8, 'Thembi', 'Ncube', 'Thembi Ncube', NULL, NULL, 'male', 'Thembi Ncube', NULL, NULL, NULL, 'Thembi Ncube', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(9, 'Patricia', 'Madengu', 'pat-ike@tiscali.co.uk', NULL, NULL, 'male', 'pat-ike@tiscali.co.uk', NULL, NULL, NULL, 'pat-ike@tiscali.co.uk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(10, 'Abraham', 'Koffi', 'abrahamkoffi_1@yahoo.co.uk', NULL, NULL, 'male', 'abrahamkoffi_1@yahoo.co.uk', NULL, NULL, NULL, 'abrahamkoffi_1@yahoo.co.uk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(11, 'Pepiyani', 'Zache', 'sitat3@yahoo.com', NULL, NULL, 'male', 'sitat3@yahoo.com', NULL, NULL, NULL, 'sitat3@yahoo.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(12, 'Bukkie', 'Adeola', 'maryjayng@yahoo.com', NULL, NULL, 'male', 'maryjayng@yahoo.com', NULL, NULL, NULL, 'maryjayng@yahoo.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(13, 'Eyako', 'Klu', 'Eyako Klu', NULL, NULL, 'male', 'Eyako Klu', NULL, NULL, NULL, 'Eyako Klu', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(14, 'Olanike', 'Adebayo', 'naikiadex@yahoo.co.uk', NULL, NULL, 'male', 'naikiadex@yahoo.co.uk', NULL, NULL, NULL, 'naikiadex@yahoo.co.uk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(15, 'Mamie', 'Egigba', 'Mamie Egigba', NULL, NULL, 'male', 'Mamie Egigba', NULL, NULL, NULL, 'Mamie Egigba', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(16, 'Emem', 'Archibond', 'ememarchibong@yahoo.co.uk', NULL, NULL, 'male', 'ememarchibong@yahoo.co.uk', NULL, NULL, NULL, 'ememarchibong@yahoo.co.uk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(17, 'Abena', 'Britwum', 'ladyabena@yahoo.com', NULL, NULL, 'male', 'ladyabena@yahoo.com', NULL, NULL, NULL, 'ladyabena@yahoo.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(18, 'Fola', 'Ogunnusi', 'Fola Ogunnusi', NULL, NULL, 'male', 'Fola Ogunnusi', NULL, NULL, NULL, 'Fola Ogunnusi', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(19, 'Bola', 'Adeola', 'bolaadeola3@yahoo.com', NULL, NULL, 'male', 'bolaadeola3@yahoo.com', NULL, NULL, NULL, 'bolaadeola3@yahoo.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(20, 'Yemi', 'Makinde', 'mankind4life@hotmail.co.uk', NULL, NULL, 'male', 'mankind4life@hotmail.co.uk', NULL, NULL, NULL, 'mankind4life@hotmail.co.uk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(21, 'Mmapula', 'Tsietso', 'maptee@yahoo.co.uk', NULL, NULL, 'male', 'maptee@yahoo.co.uk', NULL, NULL, NULL, 'maptee@yahoo.co.uk', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(22, 'Corina', 'Philipescu', 'Corina Philipescu', NULL, NULL, 'male', 'Corina Philipescu', NULL, NULL, NULL, 'Corina Philipescu', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(23, 'Michael', 'Jones', 'michael.jones@emprorecruitment.com', NULL, NULL, 'male', 'michael.jones@emprorecruitment.com', NULL, NULL, NULL, 'michael.jones@emprorecruitment.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(24, 'Alero', 'Coker', 'kluxy4life@hotmail.com', NULL, NULL, 'male', 'kluxy4life@hotmail.com', NULL, NULL, NULL, 'kluxy4life@hotmail.com', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:24', '2011-05-18 20:35:24', 1, NULL, 1, 1),
(25, 'Sitty', 'Fugede', 'Sitty Fugede', NULL, NULL, 'male', 'Sitty Fugede', NULL, NULL, NULL, 'Sitty Fugede', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 1, NULL, '2011-05-18 20:35:25', '2011-05-18 20:35:25', 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_hidden` tinyint(3) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `usergroup`
--


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


--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin__model__admin_dictionary_index`
--
ALTER TABLE `admin__model__admin_dictionary_index`
  ADD CONSTRAINT `admin__model__admin_dictionary_index_id_admin_dictionary_id` FOREIGN KEY (`id`) REFERENCES `admin_dictionary` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
