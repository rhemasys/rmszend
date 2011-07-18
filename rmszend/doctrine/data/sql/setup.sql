-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2010 at 02:01 PM
-- Server version: 5.1.36
-- PHP Version: 5.2.6

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
  `description` varchar(45) DEFAULT NULL,
  `line1` varchar(45) DEFAULT NULL,
  `line2` varchar(45) DEFAULT NULL,
  `line3` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `admin_state_id` varchar(45) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `admin_county_id` int(11) DEFAULT NULL,
  `country` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_county_id_idx` (`admin_county_id`),
  KEY `admin_state_id_idx` (`admin_state_id`)
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
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=134 ;

--
-- Dumping data for table `admin_acl`
--

INSERT INTO `admin_acl` (`id`, `title`, `scope`, `resource`, `privilege`, `allow`, `role`, `created_at`, `updated_at`, `created_by`, `updated_by`, `admin_subsite_id`) VALUES
(1, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'guest', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(2, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(3, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(4, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(5, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'blog', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(6, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'terms-and-conditions', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(7, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'privacy-policy', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(8, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'sitemap', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(9, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'my-account', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(10, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'comments-and-reviews', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(11, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'logout', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(12, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'login', 1, 'guest', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(13, 'Admin_Model_Menu', 'site', 'mvc:cms.index', 'index', 1, 'super', '2010-06-17 18:54:17', '2010-06-17 18:54:17', 1, 1, 1),
(14, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(15, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'page', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(16, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'siteaccess', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(17, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'ecomaccess', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(18, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'registry', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(19, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'tool', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(20, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'menu', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(21, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'adminaccess', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(22, 'Admin_Model_AdminMenu', 'admin', 'mvc:cms.index', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(23, 'Admin_Model_AdminMenu', 'admin', 'mvc:blog.index', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(24, 'Admin_Model_AdminMenu', 'admin', 'mvc:ecom.index', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(25, 'Admin_Model_AdminMenu', 'admin', 'mvc:ecom.index', 'setting', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(26, 'Admin_Model_AdminMenu', 'admin', 'mvc:ecom.index', 'template', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(27, 'Admin_Model_AdminMenu', 'admin', 'mvc:email.index', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(28, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.grid', 'table', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(29, 'Admin_Model_AdminMenu', 'admin', 'mvc:cms.menu', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(30, 'Admin_Model_AdminMenu', 'admin', 'mvc:cms.menu', 'frontend', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(31, 'Admin_Model_AdminMenu', 'admin', 'mvc:cms.menu', 'siteaccess', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(32, 'Admin_Model_AdminMenu', 'admin', 'mvc:cms.design', 'page', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(33, 'Admin_Model_AdminMenu', 'admin', 'mvc:cms.admin', 'setting', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(34, 'Admin_Model_AdminMenu', 'admin', 'mvc:cms.admin', 'help', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(35, 'Admin_Model_AdminMenu', 'admin', 'mvc:help.index', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(36, 'Admin_Model_AdminMenu', 'admin', 'mvc:help.search', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(37, 'Admin_Model_AdminMenu', 'admin', 'mvc:help.search', 'keyword', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(38, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.help', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(39, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.help', 'search', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(40, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.database', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(41, 'Admin_Model_AdminMenu', 'admin', 'mvc:help.design', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(42, 'Admin_Model_AdminMenu', 'admin', 'mvc:ecom.stock', 'index', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(43, 'Admin_Model_AdminMenu', 'admin', 'mvc:ecom.stock', 'product', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(44, 'Admin_Model_AdminMenu', 'admin', 'mvc:ecom.stock', 'category', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(45, 'Admin_Model_AdminMenu', 'admin', 'mvc:ecom.menu', 'ecomaccess', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(46, 'Admin_Model_AdminMenu', 'admin', 'mvc:ecom.menu', 'tree', 1, 'super', '2010-06-17 18:54:18', '2010-06-17 18:54:18', 1, 1, 1),
(47, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'login', 1, 'super', '2010-06-17 18:59:51', '2010-06-17 18:59:51', 1, 1, 1),
(48, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'login', 1, 'member', '2010-06-17 18:59:51', '2010-06-17 18:59:51', 1, 1, 1),
(49, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'login', 1, 'admininstrator', '2010-06-17 18:59:51', '2010-06-17 18:59:51', 1, 1, 1),
(50, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'super', '2010-06-17 19:00:09', '2010-06-17 19:00:09', 1, 1, 1),
(51, 'Admin_Model_Menu', 'site', 'mvc:.', 'cart', 1, 'super', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(52, 'Admin_Model_Menu', 'site', 'mvc:ecom.cart', '1', 1, 'super', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(53, 'Admin_Model_Menu', 'site', 'mvc:ecom.cart', '2', 1, 'super', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(54, 'Admin_Model_Menu', 'site', 'mvc:ecom.cart', '3', 1, 'super', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(55, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'guest', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(56, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'guest', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(57, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'blog', 1, 'guest', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(58, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'guest', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(59, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'member', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(60, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'index', 1, 'admininstrator', '2010-06-17 19:00:10', '2010-06-17 19:00:10', 1, 1, 1),
(61, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'privacy-policy', 1, 'guest', '2010-06-22 23:23:41', '2010-06-22 23:23:41', 1, 1, 1),
(62, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'sitemap', 1, 'guest', '2010-06-22 23:23:42', '2010-06-22 23:23:42', 1, 1, 1),
(63, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'member', '2010-06-22 23:23:42', '2010-06-22 23:23:42', 1, 1, 1),
(64, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'contact-us', 1, 'admininstrator', '2010-06-22 23:23:42', '2010-06-22 23:23:42', 1, 1, 1),
(65, 'Admin_Model_Menu', 'site', 'mvc:.index', 'terms-and-conditions', 1, 'super', '2010-06-22 23:23:42', '2010-06-22 23:23:42', 1, 1, 1),
(66, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'terms-and-conditions', 1, 'guest', '2010-06-22 23:24:42', '2010-06-22 23:24:42', 1, 1, 1),
(67, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'privacy-policy', 1, 'member', '2010-06-22 23:24:42', '2010-06-22 23:24:42', 1, 1, 1),
(68, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'sitemap', 1, 'member', '2010-06-22 23:24:42', '2010-06-22 23:24:42', 1, 1, 1),
(69, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'privacy-policy', 1, 'admininstrator', '2010-06-22 23:24:42', '2010-06-22 23:24:42', 1, 1, 1),
(70, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'sitemap', 1, 'admininstrator', '2010-06-22 23:24:42', '2010-06-22 23:24:42', 1, 1, 1),
(71, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'search', 1, 'guest', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(72, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'comments-and-reviews', 1, 'guest', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(73, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'site-search', 1, 'guest', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(74, 'Admin_Model_Menu', 'site', 'mvc:cms.index', 'index', 1, 'guest', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(75, 'Admin_Model_Menu', 'site', 'mvc:cms.index', 'index', 1, 'member', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(76, 'Admin_Model_Menu', 'site', 'mvc:cms.index', 'index', 1, 'admininstrator', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(77, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', '1', 1, 'super', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(78, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'search', 1, 'super', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(79, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', '2', 1, 'super', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(80, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'site-search', 1, 'super', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(81, 'Admin_Model_Menu', 'site', 'mvc:.', '1', 1, 'super', '2010-06-24 00:04:06', '2010-06-24 00:04:06', 1, 1, 1),
(82, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'ecommerce', 1, 'guest', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(83, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'web-design-development', 1, 'guest', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(84, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'content-management-system', 1, 'guest', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(85, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'web-hosting', 1, 'guest', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(86, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'help-support-maintenance', 1, 'guest', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(87, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'ecommerce', 1, 'super', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(88, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'web-design-development', 1, 'super', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(89, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'content-management-system', 1, 'super', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(90, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'web-hosting', 1, 'super', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(91, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'help-support-maintenance', 1, 'super', '2010-06-25 07:37:31', '2010-06-25 07:37:31', 1, 1, 1),
(92, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'rhema-management-system', 1, 'guest', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(93, 'Admin_Model_Menu', 'site', 'mvc:ecom.cart', 'shopping-cart', 1, 'guest', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(94, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'member', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(95, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'member', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(96, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'my-account', 1, 'member', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(97, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'about-us', 1, 'admininstrator', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(98, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'portfolio', 1, 'admininstrator', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(99, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'rhema-management-system', 1, 'super', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(100, 'Admin_Model_Menu', 'site', 'mvc:.', '2', 1, 'super', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(101, 'Admin_Model_Menu', 'site', 'mvc:.', '3', 1, 'super', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(102, 'Admin_Model_Menu', 'site', 'mvc:.', '4', 1, 'super', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(103, 'Admin_Model_Menu', 'site', 'mvc:ecom.cart', 'shopping-cart', 1, 'super', '2010-06-28 10:27:17', '2010-06-28 10:27:17', 1, 1, 1),
(104, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'webdesign-portfolio', 1, 'guest', '2010-06-28 10:56:57', '2010-06-28 10:56:57', 1, 1, 1),
(105, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'rhema-management-system', 1, 'member', '2010-06-28 10:56:57', '2010-06-28 10:56:57', 1, 1, 1),
(106, 'Admin_Model_Menu', 'site', 'mvc:ecom.cart', 'shopping-cart', 1, 'member', '2010-06-28 10:56:57', '2010-06-28 10:56:57', 1, 1, 1),
(107, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'rhema-management-system', 1, 'admininstrator', '2010-06-28 10:56:57', '2010-06-28 10:56:57', 1, 1, 1),
(108, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'my-account', 1, 'admininstrator', '2010-06-28 10:56:57', '2010-06-28 10:56:57', 1, 1, 1),
(109, 'Admin_Model_Menu', 'site', 'mvc:ecom.cart', 'shopping-cart', 1, 'admininstrator', '2010-06-28 10:56:57', '2010-06-28 10:56:57', 1, 1, 1),
(110, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'webdesign-portfolio', 1, 'super', '2010-06-28 10:56:57', '2010-06-28 10:56:57', 1, 1, 1),
(111, 'Admin_Model_Menu', 'site', 'mvc:.', 'index', 1, 'super', '2010-06-28 11:16:01', '2010-06-28 11:16:01', 1, 1, 1),
(112, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'search-engine-optimisatiion', 1, 'super', '2010-06-28 11:16:01', '2010-06-28 11:16:01', 1, 1, 1),
(113, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'bespoke-websites', 1, 'super', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(114, 'Admin_Model_Menu', 'site', 'mvc:storefront.', 'content-management-system', 1, 'super', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(115, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'search-engine-optimisatiion', 1, 'guest', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(116, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'bespoke-websites', 1, 'guest', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(117, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'ecommerce', 1, 'member', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(118, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'web-design-development', 1, 'member', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(119, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'web-hosting', 1, 'member', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(120, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'help-support-maintenance', 1, 'member', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(121, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'ecommerce', 1, 'admininstrator', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(122, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'web-design-development', 1, 'admininstrator', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(123, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'web-hosting', 1, 'admininstrator', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(124, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'help-support-maintenance', 1, 'admininstrator', '2010-06-28 11:16:02', '2010-06-28 11:16:02', 1, 1, 1),
(125, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'page-not-found', 1, 'guest', '2010-06-29 01:02:39', '2010-06-29 01:02:39', 1, 1, 1),
(126, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'webdesign-portfolio', 1, 'member', '2010-06-29 01:02:39', '2010-06-29 01:02:39', 1, 1, 1),
(127, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'webdesign-portfolio', 1, 'admininstrator', '2010-06-29 01:02:39', '2010-06-29 01:02:39', 1, 1, 1),
(128, 'Admin_Model_Menu', 'site', 'mvc:storefront.index', 'page-not-found', 1, 'super', '2010-06-29 01:02:39', '2010-06-29 01:02:39', 1, 1, 1),
(129, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'setting', 1, 'super', '2010-07-04 11:15:01', '2010-07-04 11:15:01', 1, 1, 1),
(130, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'tool', 1, 'admininstrator', '2010-07-04 11:15:01', '2010-07-04 11:15:01', 1, 1, 1),
(131, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.index', 'menu', 1, 'admininstrator', '2010-07-05 22:48:55', '2010-07-05 22:48:55', 1, 1, 1),
(132, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.layout', 'tool', 1, 'super', '2010-07-05 22:55:58', '2010-07-05 22:55:58', 1, 1, 1),
(133, 'Admin_Model_AdminMenu', 'admin', 'mvc:admin.layout', 'tool', 1, 'admininstrator', '2010-07-05 22:55:58', '2010-07-05 22:55:58', 1, 1, 1);

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
(1, 'Headers', 'Template headers category', '2010-01-29 22:07:49', '2010-01-29 22:07:49'),
(2, 'Main Body', 'Template main body', '2010-01-29 22:08:08', '2010-01-29 22:08:08'),
(3, 'Footer', 'Template footers', '2010-01-29 22:08:21', '2010-01-29 22:08:21'),
(4, 'General', '', '2010-02-11 23:04:30', '2010-02-11 23:04:30'),
(5, 'Menus', '', '2010-02-11 23:04:40', '2010-02-11 23:04:40'),
(6, 'Admin', 'Admin related items', '2010-02-16 23:01:20', '2010-02-16 23:01:20'),
(7, 'Content', '', '2010-02-21 23:26:48', '2010-02-21 23:26:48'),
(8, 'Design', '', '2010-02-21 23:26:54', '2010-03-16 10:35:21'),
(9, 'Templates', '', '2010-02-28 09:42:58', '2010-02-28 09:42:58'),
(10, 'Indexes', '', '2010-03-04 19:32:16', '2010-03-16 10:29:12'),
(11, 'User Data', 'User related data', '2010-03-16 10:28:07', '2010-03-16 10:28:08'),
(12, 'Ecommerce', '', '2010-03-18 19:36:21', '2010-05-16 19:36:44'),
(13, 'Configuration', '', '2010-04-24 11:42:45', '2010-05-16 19:37:18'),
(14, 'Blog Items', 'Items belonging to the blog module or related', '2010-06-27 18:20:14', '2010-06-27 18:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_content_type`
--

CREATE TABLE IF NOT EXISTS `admin_content_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `admin_table_id` int(11) DEFAULT NULL,
  `is_table` tinyint(4) DEFAULT NULL,
  `code` text NOT NULL,
  `sequence` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `admin_table_id_idx` (`admin_table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin_content_type`
--

INSERT INTO `admin_content_type` (`id`, `title`, `description`, `admin_table_id`, `is_table`, `code`, `sequence`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Widgets', '', 9, 0, 'AdminElement', 2, '', '2010-06-15 00:48:00', '2010-06-15 01:58:47'),
(2, 'User Defined Contents', '', 23, 0, 'Component', 1, '', '2010-06-15 00:48:31', '2010-06-15 01:57:56'),
(3, 'BreadCrumbs', '', 25, 0, 'MenuCrumb', 4, '', '2010-06-15 00:51:48', '2010-06-15 01:58:04'),
(4, 'Site Menus', '', 25, 0, 'Menu', 3, '', '2010-06-15 00:54:15', '2010-06-15 01:58:12'),
(5, 'Product Webtree', '', 49, 0, 'EcomNavigationMenu', 5, '', '2010-06-15 00:55:11', '2010-06-15 01:58:20'),
(6, 'Breadcrumb - Products', '', 49, 0, 'EcomNavigationMenuCrumb', 6, '', '2010-06-15 00:55:40', '2010-06-15 01:58:26'),
(7, 'Boiler Plates', '', 37, 0, 'BoilerPlate', 7, '', '2010-06-15 01:19:12', '2010-06-15 01:58:34'),
(8, 'Web Forms', '', 64, 0, 'WebForm', 8, '', '2010-07-06 22:03:50', '2010-07-06 22:04:40');

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
-- Table structure for table `admin_country`
--

CREATE TABLE IF NOT EXISTS `admin_country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `admin_currency_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_currency_id_idx` (`admin_currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_country`
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
(1, 'Help', 'Documentation, user manuals and help search', '2010-02-21 10:24:58', '2010-02-21 10:24:58'),
(2, 'RhemaSys', 'Content managemenet and e-commerce system tables', '2010-02-21 10:25:43', '2010-02-21 10:25:43');

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
  `note` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `admin_dictionary`
--

INSERT INTO `admin_dictionary` (`id`, `title`, `description`, `label`, `row`, `col`, `sequence`, `note`, `created_at`, `updated_at`) VALUES
(1, 'id', '', 'ID', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-04-30 19:15:48'),
(2, 'title', NULL, 'Title', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-02-07 21:25:12'),
(3, 'description', NULL, 'Description', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-02-07 21:25:12'),
(4, 'line1', '', 'Address Line 1', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-05-30 11:02:20'),
(5, 'line2', '', 'Address Line 2', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-05-30 11:02:31'),
(6, 'city', NULL, 'City', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-02-07 21:25:12'),
(7, 'region', NULL, 'Region', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-02-07 21:25:12'),
(8, 'post_code', NULL, 'Post Code', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-02-07 21:25:12'),
(9, 'admin_country_id', '', 'Country', 1, 1, 1, '', '2010-02-07 21:25:12', '2010-05-30 10:56:13'),
(10, 'created_at', '', 'Created', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 10:54:20'),
(11, 'updated_at', '', 'Updated', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 10:54:37'),
(12, 'licence_key', NULL, 'Licence Key', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(13, 'num_site', NULL, 'Num Site', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(14, 'admin_subsite_id', '', 'Website', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 10:57:20'),
(15, 'code', '', 'Product Code', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 11:03:53'),
(16, 'admin_currency_id', '', 'Currency', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 10:56:22'),
(17, 'rate', NULL, 'Rate', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(18, 'symbol', NULL, 'Symbol', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(19, 'position', NULL, 'Position', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(20, 'label', NULL, 'Label', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(21, 'filename', NULL, 'Filename', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(22, 'admin_category_id', '', 'Category', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 10:55:26'),
(23, 'is_hidden', '', 'Hide', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 11:00:56'),
(24, 'is_deleted', '', 'Deleted', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 11:00:45'),
(25, 'admin_table_id', '', 'Table', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 10:57:29'),
(26, 'module', NULL, 'Module', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(27, 'controller', NULL, 'Controller', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(28, 'action', NULL, 'Action', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(29, 'image_file', '', 'Image', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 11:09:00'),
(30, 'root_id', '', 'Root ID', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 11:04:58'),
(31, 'lft', NULL, 'Lft', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(32, 'rgt', NULL, 'Rgt', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-02-07 21:25:13'),
(33, 'admin_menu_id', '', 'Menu', 1, 1, 1, '', '2010-02-07 21:25:13', '2010-05-30 10:56:41'),
(34, 'is_active', '', 'Active', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 11:00:04'),
(35, 'deleted_at', '', 'Deleted', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 10:59:01'),
(36, 'cssid', NULL, 'Cssid', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(37, 'cssclass', NULL, 'Cssclass', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(38, 'note', NULL, 'Note', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(39, 'keyword', NULL, 'Keyword', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(40, 'licence', NULL, 'Licence', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(41, 'contact_email', NULL, 'Contact Email', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(42, 'sales_email', NULL, 'Sales Email', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(43, 'telephone', NULL, 'Telephone', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(44, 'fax', NULL, 'Fax', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(45, 'domain', NULL, 'Domain', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(46, 'root_dir', '', 'Root Directory', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 11:04:47'),
(47, 'user_id', '', 'User', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 11:05:47'),
(48, 'admin_template_id', '', 'Template', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 10:57:39'),
(49, 'renewal_at', NULL, 'Renewal At', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(50, 'colour_scheme', NULL, 'Colour Scheme', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(51, 'created_by', '', 'Author', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 10:53:53'),
(52, 'updated_by', '', 'Editor', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 10:54:51'),
(53, 'name', NULL, 'Name', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(54, 'is_admin', '', 'Admin', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 11:00:10'),
(55, 'admin_section_id', '', 'Section', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 10:57:09'),
(56, 'sequence', NULL, 'Sequence', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(57, 'content', NULL, 'Content', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(58, 'category_id', '', 'Category', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 10:57:49'),
(59, 'version', NULL, 'Version', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-02-07 21:25:14'),
(60, 'page_id', '', 'Page ID', 1, 1, 1, '', '2010-02-07 21:25:14', '2010-05-30 11:04:29'),
(61, 'start_at', '', 'Start Date', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:06:58'),
(62, 'end_at', '', 'Expiry Date', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:06:29'),
(63, 'is_cached', '', 'Use Cache', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:00:37'),
(64, 'is_secure', '', 'Secure', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:01:23'),
(65, 'slug', NULL, 'Slug', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(66, 'item', '', 'Page Item', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:01:53'),
(67, 'content_type', '', 'Content Type', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-04-10 20:43:35'),
(68, 'section_seq', '', 'Sequence', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:05:12'),
(69, 'item_seq', '', 'Sequence', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:01:42'),
(70, 'firstname', NULL, 'Firstname', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(71, 'lastname', '', 'Surname', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:03:00'),
(72, 'username', NULL, 'Username', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(73, 'dob_at', '', 'D.O.B', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 10:59:19'),
(74, 'nickname', '', 'Nick Name', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:02:47'),
(75, 'gender', NULL, 'Gender', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(76, 'password', NULL, 'Password', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(77, 'email', NULL, 'Email', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(78, 'company', NULL, 'Company', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(79, 'website', NULL, 'Website', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(80, 'is_blocked', '', 'Blocked', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:00:18'),
(81, 'is_online', '', 'Online', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:01:16'),
(82, 'visits', NULL, 'Visits', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-07 21:25:15'),
(83, 'admin_salutation_id', '', 'Title', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 10:56:57'),
(84, 'usergroup_id', '', 'User Group', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 11:05:35'),
(85, 'admin_group_id', '', 'Group', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-05-30 10:56:32'),
(86, 'address_book_id', 'Contact address', 'Address Book', 1, 1, 1, '', '2010-02-07 21:25:15', '2010-02-10 07:45:59'),
(87, 'header_id', 'Header template', 'Header', 1, 1, 1, '', '2010-02-11 22:17:04', '2010-02-11 22:17:04'),
(88, 'footer_id', 'Footer template', 'Footer', 1, 1, 1, '', '2010-02-11 22:17:22', '2010-02-11 22:17:22'),
(96, 'is_visible', '', 'Visible', 1, 0, 1, '', '2010-05-30 17:55:08', '2010-05-30 17:55:08'),
(97, 'row', '', 'Row', 1, 0, 1, '', '2010-05-30 17:58:06', '2010-05-30 18:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_element`
--

CREATE TABLE IF NOT EXISTS `admin_element` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `widget` varchar(45) DEFAULT NULL,
  `admin_category_id` int(11) NOT NULL,
  `admin_licence_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_category_id_idx` (`admin_category_id`),
  KEY `admin_licence_id_idx` (`admin_licence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `admin_element`
--

INSERT INTO `admin_element` (`id`, `title`, `description`, `widget`, `admin_category_id`, `admin_licence_id`, `created_at`, `updated_at`) VALUES
(1, 'Mini Basket', 'Interface display a summary ot the items in t', 'Cart~summary', 2, 0, '2010-02-06 13:51:23', '2010-09-05 06:33:30'),
(2, 'Main Menu', '', 'Menu~main-menu', 5, NULL, '2010-02-11 23:03:46', '2010-09-05 06:33:30'),
(3, 'Breadcrumb', '', 'Menu~breadcrumb', 4, NULL, '2010-02-12 21:52:25', '2010-09-05 06:33:30'),
(4, 'Login', 'Login form', 'Index~login', 4, 1, '2010-02-15 23:08:40', '2010-09-05 06:33:30'),
(5, 'Latest News', 'Latest news and articles', 'Index~latestnews', 7, 1, '2010-02-16 00:28:47', '2010-09-05 06:33:30'),
(6, 'Layout Tools', 'Layout management tools visible when logged i', 'Layout~tool', 6, 0, '2010-02-16 22:53:26', '2010-09-05 06:33:30'),
(7, 'Latest Blog Posts', 'Latest Blog Posts', 'Post~latestpost', 14, 3, '2010-03-20 04:01:29', '2010-09-05 06:33:30'),
(8, 'Category Search', '', 'Search~index', 4, 2, '2010-03-20 18:15:11', '2010-09-05 06:33:30'),
(9, 'Product Breadcrumb', 'Bread crumb showing web tree trail', 'Menu~productcrumb', 4, 0, '2010-03-20 18:23:12', '2010-09-05 06:33:30'),
(10, 'Shopping Cart', '', 'Cart~basket', 12, 0, '2010-05-10 21:21:27', '2010-09-05 06:33:30'),
(11, 'Product Detail', '', 'Search~product', 12, 4, '2010-05-13 21:18:01', '2010-09-05 06:33:30'),
(12, 'Branch Search', '', 'Search~branch', 12, 4, '2010-05-13 21:21:31', '2010-09-05 06:33:30'),
(13, 'Access Denied', '', 'Error~deny', 4, 0, '2010-05-16 18:56:59', '2010-09-05 06:33:30'),
(14, 'Feature Banner', 'Display featured items in a banner rotator as', 'Index~banner', 1, 0, '2010-06-06 17:14:13', '2010-09-05 06:33:30'),
(15, 'Featured Items', 'Display featured products or items. Informati', 'Index~feature', 9, 0, '2010-06-11 23:14:45', '2010-09-05 06:33:30'),
(16, 'Social Media', 'Social Media Icons', 'Index~media', 7, 1, '2010-06-18 21:42:11', '2010-09-05 19:59:40'),
(17, 'Search', '', 'Index~search', 7, 1, '2010-06-23 21:33:05', '2010-09-05 06:33:30'),
(18, 'Blog Post Display', '', 'Post~detail', 14, 3, '2010-07-24 18:47:31', '2010-09-05 06:33:30'),
(19, 'Post Archives', 'Achives of blog posts', 'Post~archive', 14, 3, '2010-07-24 19:55:58', '2010-09-05 06:33:30'),
(20, 'Post Category', 'Blog post category', 'Post~category', 14, 3, '2010-07-24 19:56:39', '2010-09-05 06:33:30');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin_licence`
--

INSERT INTO `admin_licence` (`id`, `title`, `description`, `licence_key`, `price`, `created_at`, `updated_at`) VALUES
(1, 'CMS', NULL, 'FREE', 0, '2010-06-01 16:00:48', '2010-06-28 16:00:51'),
(2, 'Admin', NULL, 'FREE2', 0, '2010-06-01 16:01:03', '2010-06-17 16:01:06'),
(3, 'Blog', '', 'Blog', 12.5, '2010-06-13 19:46:33', '2010-06-13 19:46:33'),
(4, 'Email Marketing', '', 'MAILER', 85, '2010-06-13 20:12:00', '2010-06-13 20:14:00');

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
  `is_visible` tinyint(4) DEFAULT '1',
  `is_label` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `root_id` bigint(20) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `title`, `description`, `label`, `module`, `controller`, `sequence`, `action`, `image_file`, `is_visible`, `is_label`, `created_at`, `updated_at`, `root_id`, `lft`, `rgt`, `level`) VALUES
(1, 'Admin', 'Admin menus', 'Admin Menu', 'admin', 'index', 0, 'index', 'admin.png', 1, 0, '2010-01-27 01:34:06', '2010-07-05 22:55:26', 1, 1, 32, 0),
(2, 'Cms', 'Cms menus', 'Content Management', 'cms', 'index', 0, 'index', 'cms.png', 1, 0, '2010-01-27 01:34:06', '2010-07-06 21:35:06', 2, 1, 24, 0),
(3, 'Blog', 'Blog menus', 'Blog Menu', 'blog', 'index', 0, 'index', 'blog.png', 1, 0, '2010-01-27 01:34:06', '2010-07-25 16:37:40', 3, 1, 14, 0),
(4, 'eCommerce', 'eCom menus', 'eCommerce', 'ecom', 'index', 0, 'index', 'ecommerce.png', 1, 0, '2010-01-27 01:34:06', '2010-06-05 10:58:47', 4, 1, 22, 0),
(5, 'Email', 'Email menus', 'Email Menu', 'email', 'index', 0, 'index', 'email.png', 1, 0, '2010-01-27 01:34:06', '2010-01-27 01:34:06', 5, 1, 2, 0),
(6, 'Manage', '', 'Manage', 'admin', 'index', 1, '', '/golive/userfiles/NIKE-10.jpg', 1, 0, '2010-01-27 21:10:03', '2010-07-05 22:55:26', 1, 14, 23, 1),
(7, 'System', '', 'System', 'admin', 'index', 0, 'index', '', 1, 0, '2010-01-27 21:10:31', '2010-07-05 22:55:26', 1, 24, 29, 1),
(8, 'Pages', '', 'Pages', 'admin', 'index', 0, 'page', '', 1, 0, '2010-01-27 21:10:56', '2010-06-05 10:44:15', 1, 3, 4, 2),
(9, 'Design', '', 'Design', 'admin', 'index', 1, 'page', '', 1, 0, '2010-01-27 21:11:18', '2010-07-05 22:55:26', 1, 2, 13, 1),
(10, 'Tables', '', 'Tables', 'admin', 'grid', 3, 'table', '', 1, 0, '2010-01-27 21:12:12', '2010-07-05 22:55:26', 1, 17, 18, 2),
(11, 'Menus', '', 'Menus', 'admin', 'index', 1, 'siteaccess', '', 1, 0, '2010-01-27 21:12:20', '2010-07-05 22:55:26', 1, 5, 10, 2),
(12, 'Category', '', 'Category', 'blog', 'index', 6, 'category', '', 1, 0, '2010-01-27 21:14:26', '2010-07-25 12:36:15', 3, 3, 4, 2),
(13, 'Menus', '', 'Menus', 'cms', 'menu', 0, 'index', '', 1, 0, '2010-01-27 21:14:34', '2010-06-05 10:57:55', 2, 3, 8, 2),
(14, 'Pages', '', 'Pages', 'cms', 'design', 0, 'page', '', 1, 0, '2010-01-27 21:14:46', '2010-06-05 10:57:55', 2, 9, 10, 2),
(15, 'Archives', '', 'Archives', 'blog', 'index', 1, 'index', '', 1, 0, '2010-01-27 21:14:51', '2010-07-25 16:37:40', 3, 11, 12, 2),
(16, 'Help', '', 'Help', 'cms', 'admin', 0, 'help', '', 1, 0, '2010-01-27 21:15:01', '2010-07-06 21:35:06', 2, 16, 19, 1),
(17, 'Help', 'help menus', 'Help', 'help', 'index', 0, 'index', 'help.png', 1, 0, '2010-02-08 01:23:32', '2010-06-05 22:39:23', 17, 1, 12, 0),
(18, 'Design', 'Search for help information', 'Design', 'help', 'search', 0, 'index', NULL, 1, 0, '2010-02-17 22:09:30', '2010-06-05 22:39:50', 17, 2, 5, 1),
(19, 'Help', 'Knowledge center, help and documentation home', 'Help', 'admin', 'help', 0, 'index', NULL, 1, 0, '2010-02-17 22:14:05', '2010-07-05 22:55:26', 1, 30, 31, 1),
(21, 'Search', 'Perform help search', 'Search', 'admin', 'help', 0, 'search', NULL, 1, 0, '2010-02-17 22:17:07', '2010-06-05 22:39:23', 17, 6, 11, 1),
(22, 'Users', NULL, 'Users', NULL, '', 0, NULL, NULL, 1, 0, '2010-02-17 22:17:31', '2010-07-05 22:55:26', 1, 19, 22, 2),
(23, 'Licencing', '', 'Licencing', 'admin', 'index', 1, 'registry', '', 1, 0, '2010-02-17 22:17:44', '2010-07-05 22:55:26', 1, 25, 26, 2),
(25, 'Tools', 'Front end layout design tools', 'Tools', 'admin', 'layout', 1, 'tool', '', 1, 0, '2010-02-17 22:29:41', '2010-07-05 22:55:26', 1, 11, 12, 2),
(26, 'Database', 'View existing databases, schema and informati', 'Database', 'admin', 'database', 0, 'index', NULL, 1, 0, '2010-02-17 22:32:04', '2010-07-05 22:55:26', 1, 15, 16, 2),
(27, 'Layout', '', 'Layout', 'help', 'design', 0, 'index', NULL, 1, 0, '2010-02-20 08:12:39', '2010-06-05 22:39:38', 17, 3, 4, 2),
(28, 'Keyword', '', 'Keyword', 'help', 'search', 0, 'keyword', NULL, 1, 0, '2010-02-21 00:44:48', '2010-06-05 22:39:23', 17, 7, 8, 2),
(29, 'Help Types', '', 'Help Types', 'help', 'search', 0, 'index', NULL, 1, 0, '2010-02-21 00:45:04', '2010-06-05 22:39:23', 17, 9, 10, 2),
(30, 'Layout', '', 'Layout', 'admin', 'index', 3, 'menu', '', 1, 0, '2010-03-15 23:00:34', '2010-07-05 22:55:26', 1, 6, 7, 3),
(31, 'Layout', '', 'Layout', 'cms', 'menu', 1, 'frontend', '', 1, 0, '2010-03-15 23:00:44', '2010-06-05 16:06:27', 2, 4, 5, 3),
(32, 'Trees', '', 'Trees', 'ecom', 'index', 1, 'index', '', 1, 0, '2010-03-18 20:22:52', '2010-06-12 01:40:45', 4, 5, 10, 2),
(33, 'Manage', '', 'Manage', 'ecom', 'stock', 1, 'index', '', 1, 0, '2010-03-18 20:24:46', '2010-06-05 10:58:47', 4, 18, 19, 1),
(34, 'Products', '', 'Products', 'ecom', 'stock', 1, 'product', '', 1, 0, '2010-03-18 23:58:12', '2010-05-28 07:47:19', 4, 3, 4, 2),
(35, 'Category', '', 'Category', 'ecom', 'stock', 2, 'category', '', 1, 0, '2010-03-19 00:00:31', '2010-06-05 10:58:47', 4, 11, 12, 2),
(36, 'Settings', '', 'Settings', 'ecom', 'index', 1, 'setting', '', 1, 0, '2010-03-19 00:01:13', '2010-06-05 10:58:47', 4, 20, 21, 1),
(37, 'Design', '', 'Design', 'ecom', 'index', 1, 'index', NULL, 1, 0, '2010-04-05 16:26:01', '2010-06-05 10:58:47', 4, 14, 17, 1),
(38, 'Attributes', '', 'Attributes', 'ecom', 'index', 2, 'template', NULL, 1, 0, '2010-04-05 16:26:13', '2010-06-05 11:04:00', 4, 15, 16, 2),
(39, 'Access Control', '', 'Access Control', 'admin', 'index', 2, 'adminaccess', '', 1, 0, '2010-05-23 15:40:25', '2010-07-05 22:55:26', 1, 8, 9, 3),
(40, 'Access Control', '', 'Access Control', 'cms', 'menu', 1, 'siteaccess', '', 1, 0, '2010-05-23 15:40:42', '2010-06-12 01:26:53', 2, 6, 7, 3),
(41, 'Access Control', '', 'Access Control', 'ecom', 'menu', 2, 'ecomaccess', '', 1, 0, '2010-05-23 15:40:52', '2010-06-12 01:39:00', 4, 8, 9, 3),
(42, 'Design', NULL, 'Design', NULL, '', 0, NULL, NULL, 1, 0, '2010-05-23 23:06:32', '2010-07-06 21:35:06', 2, 2, 15, 1),
(43, 'Catalog', NULL, 'Catalog', NULL, '', 0, NULL, NULL, 1, 0, '2010-05-28 07:46:06', '2010-06-05 10:58:47', 4, 2, 13, 1),
(44, 'Posts', '', 'Posts', 'blog', 'index', 0, 'addpost', '', 1, 0, '2010-05-31 22:17:22', '2010-07-25 12:36:38', 3, 5, 6, 2),
(45, 'User Roles', '', 'User Roles', 'cms', 'admin', 1, 'setting', '', 1, 0, '2010-05-31 22:17:39', '2010-07-05 22:55:26', 1, 20, 21, 3),
(46, 'Layout', '', 'Layout', 'ecom', 'menu', 1, 'tree', '', 1, 0, '2010-06-05 10:58:36', '2010-06-12 01:39:19', 4, 6, 7, 3),
(47, 'System', NULL, 'System', NULL, '', 0, '', NULL, 1, 0, '2010-06-22 07:43:51', '2010-07-06 21:35:06', 2, 20, 23, 1),
(48, 'Settings', '', 'Settings', 'cms', 'admin', 1, 'setting', '', 1, 0, '2010-06-22 07:44:12', '2010-07-06 21:35:06', 2, 21, 22, 2),
(49, 'Setting Definition', '', 'Setting Definition', 'admin', 'index', 5, 'setting', '', 1, 0, '2010-06-22 07:44:38', '2010-07-05 22:55:26', 1, 27, 28, 2),
(50, 'Featured Items', '', 'Featured Items', 'cms', 'design', 2, 'feature', '', 1, 0, '2010-06-24 01:03:24', '2010-06-24 01:04:53', 2, 11, 12, 2),
(51, 'Web Forms', '', 'Web Forms', 'cms', 'design', 1, 'form', '', 1, 0, '2010-07-06 21:35:06', '2010-07-06 21:35:50', 2, 13, 14, 2),
(52, 'Design', NULL, 'Design', NULL, '', 0, '', NULL, 1, 0, '2010-07-25 11:41:27', '2010-07-25 16:37:40', 3, 2, 9, 1),
(53, 'Manage', NULL, 'Manage', NULL, '', 0, '', NULL, 1, 0, '2010-07-25 11:41:56', '2010-07-25 16:37:40', 3, 10, 13, 1),
(54, 'Comments', '', 'Comments', 'blog', 'index', 1, 'comment', '', 1, 0, '2010-07-25 16:37:39', '2010-07-25 20:37:05', 3, 7, 8, 2);

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
  `sequence` tinyint(4) NOT NULL DEFAULT '1',
  `thumb` varchar(45) NOT NULL,
  `image_file` varchar(45) NOT NULL,
  `admin_menu_id` int(11) NOT NULL,
  `admin_licence_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_menu_id_idx` (`admin_menu_id`),
  KEY `admin_licence_id_idx` (`admin_licence_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin_module`
--

INSERT INTO `admin_module` (`id`, `title`, `description`, `label`, `module`, `sequence`, `thumb`, `image_file`, `admin_menu_id`, `admin_licence_id`, `created_at`, `updated_at`, `content`) VALUES
(1, 'CMS', 'Content Management module', 'Content Manager', 'cms', 2, '/backend/images/icons/cms.png', '/backend/images/graphics/cms.png', 2, 1, '2010-02-08 20:41:27', '2010-07-19 22:41:59', '<p>\n	<img alt="" src="/golive/media/image/graphics/original/web_design_graphic.gif" style="width: 300px; height: 300px; float: right;" />RhemaSys Content Management suites comprise functionalities and subsystems that enables site adminstrators manage their sites contents with ease.</p>\n<p>\n	The functionalies provided are easy to use with help provided to help adminstrators make maximum use of the tool provided without the need for any web programming knowledge or skill.</p>\n<p>\n	The functionalities and tools provided include the following:</p>\n<ul>\n	<li>\n		User defined content generation and management</li>\n	<li>\n		Unlimited page creation</li>\n	<li>\n		Page Templating</li>\n	<li>\n		Caching and Site Perfomance Improvements</li>\n	<li>\n		Multi-level Menu Generation and Access Control</li>\n</ul>\n<p>\n	&nbsp;</p>\n<div firebugversion="1.5.4" id="_firebugConsole" style="display: none;">\n	&nbsp;</div>'),
(2, 'Blog', '', 'Comments and Reviews', 'blog', 4, '/backend/images/icons/blog.png', '/backend/images/graphics/blog.png', 3, 3, '2010-02-08 20:41:59', '2010-06-13 20:18:44', ''),
(3, 'Email', '', 'Email Marketing', 'email', 5, '/backend/images/icons/email.png', '/backend/images/graphics/email.png', 5, 3, '2010-02-08 20:42:30', '2010-06-13 20:18:51', ''),
(4, 'Admin', '', 'Super Adminstrator', 'admin', 1, '/backend/images/icons/admin.png', '/backend/images/graphics/admin.png', 1, 2, '2010-02-08 20:43:02', '2010-06-13 20:18:20', ''),
(5, 'eCommerce', '', 'eCommerce', 'ecom', 3, '/backend/images/icons/cart.png', '/backend/images/graphics/cart.png', 4, 2, '2010-02-08 20:43:23', '2010-06-13 20:18:35', ''),
(6, 'Users', '', 'User Manager', 'help', 1, '/backend/images/icons/help.png', '/backend/images/graphics/help.png', 17, 6, '2010-02-08 20:43:44', '2010-06-05 11:07:31', ''),
(8, 'Help', 'Help generation module', 'Help', 'help', 6, '/backend/images/icons/help.png', '/backend/images/graphics/help.png', 17, 2, '2010-07-12 20:45:06', '2010-07-12 21:13:57', '');

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
(1, 'Banner', 'Website banner usually located in the header ', 'banner', 'sxnHeadBanner', '', 1, '2010-01-29 03:05:19', '2010-02-07 21:41:57'),
(2, 'Top Bar', 'Navigation menus located at the very top of t', 'sxnHeaderTopBar', '', '', 1, '2010-01-29 03:05:26', '2010-02-07 21:30:20'),
(3, 'SearchBar', 'Search input field and button', 'search-bar', 'sxnSiteSearch', '', 1, '2010-02-06 01:37:17', '2010-06-23 21:45:34'),
(4, 'Main Menu', 'Main navigation menus', 'main-menu', 'divMainMenu', '', 1, '2010-02-07 21:31:10', '2010-02-07 21:42:12'),
(5, 'First of 3 sections', '', 'sxn3a', 'sxnMainFirstThird', '', 2, '2010-02-07 21:32:48', '2010-02-07 21:32:48'),
(6, 'Second of 3 sections', '', 'sxn3b', 'sxnMainMiddleThird', '', 2, '2010-02-07 21:33:22', '2010-02-07 21:33:22'),
(7, 'Third of 3 sections', '', 'sxn3c', 'sxnMainLastThird', '', 2, '2010-02-07 21:33:49', '2010-02-07 21:33:49'),
(8, 'Large Left ', '', 'large-left', 'sxnMainLeftLarge', '', 2, '2010-02-07 21:34:13', '2010-02-07 21:42:19'),
(9, 'Small Right', '', 'small-right', 'sxnMainRightSmall', '', 2, '2010-02-07 21:34:43', '2010-02-07 21:34:43'),
(10, 'Header - Large Left', '', 'header-left-large', 'sxnHeadLeftLarge', '', 1, '2010-02-07 21:35:21', '2010-02-07 21:35:21'),
(11, 'Header - Small Right', '', 'header-right-small', 'sxnHeadRightSmall', '', 1, '2010-02-07 21:36:01', '2010-02-07 21:36:01'),
(12, 'Seperator', '', 'seperator', 'seperator', '', 2, '2010-02-07 21:36:31', '2010-02-07 21:42:27'),
(13, 'Blog Main Section', '', 'blog-main', 'sxnBlogMain', '', 2, '2010-02-07 21:37:00', '2010-02-07 21:37:00'),
(14, 'Blog - First Right', '', 'blog-right-first', 'sxnBlogRightFirst', '', 2, '2010-02-07 21:37:45', '2010-02-07 21:37:45'),
(15, 'Blog Right Last', '', 'blog-right-last', 'sxnBlogRightLast', '', 2, '2010-02-07 21:38:11', '2010-02-07 21:38:11'),
(16, 'Top', '', 'main-top', 'sxnMainTop', '', 2, '2010-02-07 21:38:46', '2010-02-07 21:42:41'),
(17, 'Main Left', '', 'main-left', 'sxnMainLeftHalf', '', 2, '2010-02-07 21:39:13', '2010-02-07 21:39:13'),
(18, 'Main Right', '', 'main-right', 'sxnMainRightHalf', '', 2, '2010-02-07 21:39:37', '2010-02-07 21:39:37'),
(19, 'Main Bottom', '', 'main-bottom', 'sxnMainBottom', '', 2, '2010-02-07 21:39:56', '2010-02-07 21:39:56'),
(20, 'Small Left', '', 'small-left', 'sxnMainLeftSmall', '', 2, '2010-02-07 21:40:22', '2010-02-07 21:40:22'),
(21, 'Large Right', '', 'large-right', 'sxnMainRightLarge', '', 2, '2010-02-07 21:40:44', '2010-02-07 21:40:44'),
(22, 'Top Navigation', 'Top Navigation Menu', 'top-navigation', 'divTopMenu', '', 1, '2010-02-07 21:41:13', '2010-02-07 21:42:56'),
(23, 'Bottom Navigation', '', 'bottom-nav', 'divBottomNav', '', 3, '2010-02-07 21:41:32', '2010-02-07 21:41:32'),
(24, 'Site Logo', '', 'site-logo', 'sxnLogo', '', 1, '2010-06-07 21:04:26', '2010-06-07 21:04:58'),
(25, 'Span 1', 'Full width ', '', 'sxnSpanOne', '', 7, '2010-06-19 16:54:06', '2010-06-19 16:54:06'),
(26, 'Span 2', '', '', 'sxnSpanTwo', '', 7, '2010-06-19 16:54:26', '2010-06-19 16:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_setting`
--

CREATE TABLE IF NOT EXISTS `admin_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `field_type` enum('select','text','radio','checkbox','hidden','image','submit','reset') NOT NULL DEFAULT 'text',
  `admin_table_id` int(11) DEFAULT NULL,
  `module` varchar(45) DEFAULT NULL,
  `param` varchar(45) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_table_id_idx` (`admin_table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_setting`
--

INSERT INTO `admin_setting` (`id`, `title`, `description`, `field_type`, `admin_table_id`, `module`, `param`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Default Header', '', 'select', 16, '', '', '', '2010-06-22 08:06:45', '2010-06-22 22:15:23'),
(2, 'Default Footer', '', 'select', 61, '', '', '', '2010-06-22 22:33:35', '2010-06-22 22:33:35');

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
-- Table structure for table `admin_subsite`
--

CREATE TABLE IF NOT EXISTS `admin_subsite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `keyword` varchar(45) DEFAULT NULL,
  `contact_email` varchar(45) NOT NULL,
  `sales_email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) NOT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `domain` varchar(45) DEFAULT NULL,
  `root_dir` varchar(45) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `renewal_at` datetime DEFAULT NULL,
  `colour_scheme` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `admin_template_id_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_subsite`
--

INSERT INTO `admin_subsite` (`id`, `title`, `description`, `keyword`, `contact_email`, `sales_email`, `telephone`, `fax`, `domain`, `root_dir`, `user_id`, `template_id`, `renewal_at`, `colour_scheme`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Rhema Webdesign', 'Design arm of Rhema Group', 'rhemastudio,. webdesign ', 'info@rhema-webdesign.com', NULL, '02476683692', NULL, 'rhemasys-dev', 'golive', 1, NULL, NULL, NULL, '2010-06-13 16:07:33', '2010-06-13 16:07:36', 1, 1);

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
  KEY `admin_licence_id_idx` (`admin_licence_id`),
  KEY `admin_subsite_id_idx` (`admin_subsite_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin_subsite_licence`
--

INSERT INTO `admin_subsite_licence` (`id`, `admin_licence_id`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 1, 1, '2010-06-13 16:08:06', '2010-06-13 19:43:57', NULL, 1),
(2, 2, 1, '2010-04-05 17:25:13', '2010-06-13 19:43:57', NULL, 1),
(3, 4, 1, '2010-06-13 20:12:32', '2010-06-13 20:12:32', NULL, 1),
(4, 3, 1, '2010-06-13 20:12:32', '2010-06-13 20:12:32', NULL, 1);

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
  `admin_category_id` int(11) NOT NULL,
  `admin_database_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `admin_category_id_idx` (`admin_category_id`),
  KEY `admin_database_id_idx` (`admin_database_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `title`, `description`, `name`, `is_admin`, `is_hidden`, `note`, `admin_category_id`, `admin_database_id`, `created_at`, `updated_at`) VALUES
(1, 'Address Book', '', 'address_book', 0, 0, '', 11, 2, '2010-01-29 21:35:15', '2010-05-22 10:53:01'),
(2, 'Data dictionary index', '', 'admin__model__admin_dictionary_index', 0, 1, '', 0, 2, '2010-01-29 21:35:15', '2010-02-21 10:54:13'),
(3, 'Component version table', '', 'admin__model__component_version', 0, 1, '', 0, 2, '2010-01-29 21:35:15', '2010-02-21 10:54:13'),
(4, 'Category - Admin', '', 'admin_category', 0, 0, '', 6, 2, '2010-01-29 21:35:15', '2010-02-21 23:28:03'),
(5, 'Sites -  Control ', '', 'admin_control', 0, 1, '', 3, 2, '2010-01-29 21:35:15', '2010-02-21 10:54:13'),
(6, 'User Inquiry', '', 'inquiry', 0, 0, '', 11, 2, '2010-01-29 21:35:15', '2010-07-05 21:25:29'),
(7, 'Currency', '', 'admin_currency', 0, 0, '', 4, 2, '2010-01-29 21:35:15', '2010-02-21 23:28:39'),
(8, 'Data Dictionary', '', 'admin_dictionary', 0, 0, '', 7, 2, '2010-01-29 21:35:15', '2010-02-21 23:28:48'),
(9, 'Page Elements', '', 'admin_element', 0, 0, '', 6, 2, '2010-01-29 21:35:15', '2010-05-22 10:57:33'),
(10, 'Admin Groups', '', 'admin_group', 0, 0, '', 6, 2, '2010-01-29 21:35:15', '2010-02-21 23:27:44'),
(12, 'Tax Rates', '', 'ecom_tax', 0, 0, '', 12, 2, '2010-01-29 21:35:15', '2010-06-15 00:41:41'),
(13, 'Menus - Admin', '', 'admin_menu', 0, 0, '', 5, 2, '2010-01-29 21:35:15', '2010-02-21 23:30:08'),
(14, 'Modules', '', 'admin_module', 0, 0, '', 6, 2, '2010-01-29 21:35:15', '2010-05-22 10:59:34'),
(15, 'Site-Module Index', '', 'admin_module_subsite', 0, 1, '', 0, 2, '2010-01-29 21:35:15', '2010-02-21 10:54:13'),
(16, 'Page Headers', '', 'page_header', 0, 0, '', 0, 2, '2010-01-29 21:35:15', '2010-06-14 00:55:47'),
(17, 'Acl Rules', '', 'admin_acl', 0, 0, '', 6, 2, '2010-01-29 21:35:15', '2010-05-22 10:58:40'),
(18, 'Sections', '', 'admin_section', 0, 0, '', 6, 2, '2010-01-29 21:35:15', '2010-05-22 10:59:59'),
(19, 'Tables', '', 'admin_table', 0, 0, '', 6, 2, '2010-01-29 21:35:15', '2010-03-16 10:30:04'),
(20, 'Page Templates', '', 'admin_template', 0, 0, '', 8, 2, '2010-01-29 21:35:15', '2010-05-22 10:57:52'),
(21, 'Template-Section Index', '', 'admin_template_section', 0, 1, '', 0, 2, '2010-01-29 21:35:15', '2010-02-21 10:54:13'),
(22, 'Users - Admin', '', 'admin_user', 0, 0, '', 6, 2, '2010-01-29 21:35:15', '2010-03-16 10:35:03'),
(23, 'Page Contents', '', 'component', 0, 0, '', 7, 2, '2010-01-29 21:35:15', '2010-03-16 10:31:21'),
(24, 'Doctrine Index ', '', 'doctrine__record__abstract', 0, 1, '', 0, 2, '2010-01-29 21:35:15', '2010-02-21 10:54:13'),
(25, 'Menus - Front End', '', 'menu', 0, 0, '', 5, 2, '2010-01-29 21:35:16', '2010-03-16 10:31:06'),
(26, 'Page Layout Index', '', 'page_layout', 0, 1, '', 0, 2, '2010-01-29 21:35:16', '2010-02-21 10:54:13'),
(27, 'Roles - User', '', 'role', 0, 0, '', 11, 2, '2010-01-29 21:35:16', '2010-03-19 21:01:43'),
(28, 'Salutations', '', 'salutation', 0, 0, '', 11, 2, '2010-01-29 21:35:16', '2010-05-30 20:00:23'),
(29, 'Sites -  List', '', 'admin_subsite', 0, 0, '', 6, 2, '2010-01-29 21:35:16', '2010-03-16 10:33:00'),
(30, 'Users', '', 'user', 0, 0, '', 11, 2, '2010-01-29 21:35:16', '2010-03-16 10:36:41'),
(31, 'User-Address Index', '', 'user_address', 0, 1, '', 0, 2, '2010-01-29 21:35:16', '2010-02-21 10:54:13'),
(32, 'User-Subsite Index', '', 'user_subsite', 0, 1, '', 0, 2, '2010-01-29 21:35:16', '2010-02-21 10:54:13'),
(33, 'User Groups', '', 'usergroup', 0, 0, '', 11, 2, '2010-01-29 21:35:16', '2010-05-30 20:03:55'),
(34, 'Pages', 'Web pages', 'page', 0, 0, '', 7, 2, '2010-02-15 23:40:58', '2010-03-16 10:32:01'),
(35, 'Category - User', '', 'category', 0, 0, '', 11, 2, '2010-02-16 23:00:42', '2010-03-19 21:01:15'),
(36, 'Databases', '', 'admin_database', 0, 0, '', 6, 2, '2010-02-21 10:16:59', '2010-02-21 10:54:14'),
(37, 'Boiler Plates', '', 'boiler_plate', 0, 0, '', 7, 1, '2010-02-21 11:27:19', '2010-05-22 10:55:26'),
(38, 'Help category', '', 'category', 0, 0, '', 4, 1, '2010-02-21 11:27:20', '2010-02-21 23:29:58'),
(40, 'Help Documents', '', 'Help Documents', 0, 0, '', 7, 1, '2010-02-21 11:27:22', '2010-05-22 10:54:38'),
(41, 'Help Fields', '', 'field', 0, 0, '', 7, 1, '2010-02-21 11:27:23', '2010-05-22 10:57:05'),
(42, 'Help Templates', '', 'template', 0, 0, '', 4, 1, '2010-02-21 11:27:24', '2010-04-03 15:19:16'),
(43, 'template_boiler_plate', '', 'template_boiler_plate', 0, 1, '', 1, 1, '2010-02-21 11:27:25', '2010-02-21 12:40:37'),
(44, 'template_field', '', 'template_field', 0, 1, '', 1, 1, '2010-02-21 11:27:26', '2010-02-21 12:40:42'),
(45, 'Help Types', '', 'type', 0, 0, '', 8, 1, '2010-02-21 11:27:27', '2010-05-22 11:00:25'),
(46, 'Site Templates', '', 'template', 0, 0, '', 9, 2, '2010-02-28 09:42:19', '2010-02-28 09:45:45'),
(47, 'Payment Methods', '', 'ecom_payment_method', 0, 0, '', 12, 2, '2010-03-04 21:52:43', '2010-03-21 21:11:49'),
(48, 'Product Category', '', 'ecom_category', 0, 0, '', 12, 2, '2010-03-18 19:35:41', '2010-03-19 20:40:13'),
(49, 'Web Trees', 'Product navigation web trees', 'ecom_navigation_menu', 0, 0, '', 12, 2, '2010-03-20 21:05:42', '2010-03-20 21:05:42'),
(50, 'Licence Keys', 'Licence', 'admin_licence', 0, 0, '', 6, 2, '2010-03-21 14:07:24', '2010-03-21 14:07:24'),
(51, 'Subsite Licences', '', 'admin_subsite_licence', 0, 0, '', 6, 2, '2010-03-21 14:07:46', '2010-03-21 14:07:46'),
(52, 'Delivery Methods', '', 'ecom_delivery_method', 0, 0, '', 12, 2, '2010-03-21 21:13:20', '2010-03-21 21:13:20'),
(53, 'Web Settings', '', 'admin_setting', 0, 0, '', 6, 2, '2010-03-23 22:22:56', '2010-03-23 22:22:56'),
(54, 'Site Settings', 'Site settings', 'setting', 0, 0, '', 4, 2, '2010-03-23 22:59:53', '2010-03-23 22:59:53'),
(55, 'Products', '', 'ecom_product', 0, 0, '', 12, 2, '2010-03-24 23:45:45', '2010-03-24 23:45:45'),
(56, 'Product-Category Index', '', 'ecom_product_category', 0, 0, '', 12, 2, '2010-03-24 23:47:47', '2010-03-24 23:47:47'),
(57, 'Display Templates', 'User defined template allowing admintrators s', 'ecom_display_template', 0, 0, '', 12, 2, '2010-04-03 14:53:53', '2010-04-05 15:06:02'),
(58, 'Category Template', 'User defined template allowing admintrators s', 'ecom_category_template', 0, 0, '', 12, 2, '2010-04-03 14:54:44', '2010-04-03 15:19:54'),
(59, 'Display Attributes', 'Admin defined attributes for products and pro', 'ecom_attribute', 0, 0, '', 12, 2, '2010-04-03 14:56:02', '2010-05-22 10:53:50'),
(60, 'Template Display Types', 'List of all possible attributes that can be d', 'ecom_display_type', 0, 0, '', 12, 2, '2010-04-03 21:03:41', '2010-04-05 15:05:50'),
(61, 'Page Footers', '', 'page_footer', 0, 0, '', 3, 2, '2010-06-14 00:57:29', '2010-06-14 00:57:29'),
(62, 'Featured Items', '', 'featured', 0, 0, '', 7, 2, '2010-06-14 00:57:52', '2010-06-27 16:54:35'),
(63, 'Content Types', '', 'admin_content_type', 0, 0, '', 7, 2, '2010-06-15 00:39:59', '2010-06-15 00:39:59'),
(64, 'Web Forms', 'Web forms', 'web_form', 0, 0, '', 7, 2, '2010-07-06 21:31:31', '2010-07-06 21:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_template`
--

CREATE TABLE IF NOT EXISTS `admin_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `is_header` tinyint(4) DEFAULT NULL,
  `is_footer` tinyint(4) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `admin_category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_category_id_idx` (`admin_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `admin_template`
--

INSERT INTO `admin_template` (`id`, `title`, `description`, `is_header`, `is_footer`, `image_file`, `thumb`, `admin_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Default', '', 0, 0, '', NULL, 2, '2010-02-11 22:15:30', '2010-06-01 23:54:09'),
(2, 'Header', '', 1, 0, '', NULL, 1, '2010-02-11 22:15:42', '2010-02-27 12:53:12'),
(3, 'Footer', '', 0, 1, '', NULL, 3, '2010-02-11 22:15:47', '2010-02-27 12:53:06'),
(4, 'Top-Main-Search', 'Page header with top menu, search bar, site l', 1, 0, '', NULL, 1, '2010-06-07 21:05:23', '2010-06-07 21:22:49'),
(5, 'Home Page Template', '', 0, 0, '', NULL, 1, '2010-06-09 20:02:41', '2010-06-09 21:50:58'),
(6, 'Home page footer', '', 0, 1, '', '', 3, '2010-06-27 19:54:55', '2010-06-27 19:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_template_section`
--

CREATE TABLE IF NOT EXISTS `admin_template_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_section_id` int(11) NOT NULL,
  `admin_template_id` int(11) NOT NULL,
  `sequence` int(11) DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_section_id_idx` (`admin_section_id`),
  KEY `admin_template_id_idx` (`admin_template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `admin_template_section`
--

INSERT INTO `admin_template_section` (`id`, `admin_section_id`, `admin_template_id`, `sequence`, `deleted_at`) VALUES
(1, 4, 1, 0, '2010-02-28 09:30:37'),
(2, 5, 1, 3, NULL),
(3, 6, 1, 5, NULL),
(4, 7, 1, 4, NULL),
(5, 8, 1, 1, '2010-03-08 07:28:20'),
(6, 9, 1, 0, '2010-03-08 07:28:20'),
(7, 19, 1, 0, NULL),
(8, 4, 2, 1, NULL),
(9, 22, 2, 0, NULL),
(10, 1, 2, 3, NULL),
(11, 23, 3, 3, NULL),
(12, 20, 1, 1, NULL),
(13, 21, 1, 2, NULL),
(14, 8, 3, 0, '2010-03-21 23:03:26'),
(15, 24, 4, 0, '2010-06-07 23:36:29'),
(16, 3, 4, 1, '2010-06-07 23:36:29'),
(17, 16, 4, 2, '2010-06-07 23:36:29'),
(18, 4, 4, 1, NULL),
(19, 17, 4, 0, '2010-06-07 23:39:06'),
(20, 18, 4, 1, '2010-06-07 23:39:06'),
(21, 24, 4, 0, '2010-06-07 23:44:51'),
(22, 3, 4, 1, '2010-06-07 23:44:51'),
(23, 16, 4, 0, NULL),
(24, 1, 5, 0, '2010-06-09 21:50:37'),
(25, 5, 5, 1, '2010-06-09 21:50:37'),
(26, 7, 5, 2, '2010-06-09 21:50:37'),
(27, 6, 5, 3, '2010-06-09 21:48:34'),
(28, 0, 5, 0, '2010-06-09 21:51:39'),
(29, 5, 5, 1, '2010-06-19 17:25:57'),
(30, 7, 5, 3, '2010-06-19 17:25:57'),
(31, 6, 5, 2, '2010-06-19 17:25:57'),
(32, 19, 3, 2, NULL),
(33, 25, 5, 2, '2010-06-19 22:47:52'),
(34, 5, 5, 0, '2010-06-19 22:47:58'),
(35, 6, 5, 1, '2010-06-19 22:48:02'),
(36, 7, 5, 3, '2010-06-19 22:48:07'),
(37, 19, 5, 3, NULL),
(38, 20, 5, 1, '2010-06-20 17:19:07'),
(39, 21, 5, 0, '2010-06-20 17:19:07'),
(40, 25, 5, 0, NULL),
(41, 3, 2, 2, NULL),
(42, 8, 5, 1, NULL),
(43, 9, 5, 2, NULL),
(44, 17, 3, 0, NULL),
(45, 18, 3, 1, NULL),
(46, 19, 6, 0, NULL),
(47, 23, 6, 1, NULL);

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
(16, '48', 'content', 9),
(16, '48px', 'content', 13),
(16, '48px', 'content', 15),
(16, 'alt', 'content', 3),
(16, 'blog', 'content', 4),
(16, 'feed', 'content', 5),
(16, 'feed', 'content', 8),
(16, 'feed', 'title', 0),
(16, 'height', 'content', 14),
(16, 'icon', 'title', 1),
(16, 'img', 'content', 2),
(16, 'p', 'content', 1),
(16, 'p', 'content', 18),
(16, 'png', 'content', 10),
(16, 'src', 'content', 6),
(16, 'style', 'content', 11),
(16, 'userfiles', 'content', 7),
(16, 'width', 'content', 12);

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
(16, 'Feed Icon', '', '<p><img alt="blog feed" src="/userfiles/feed_48.png" style="width: 48px; height: 48px;" /></p>', 1, '2010-06-18 21:25:27', '2010-06-18 21:25:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin__model__featured_version`
--

CREATE TABLE IF NOT EXISTS `admin__model__featured_version` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(50) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
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

INSERT INTO `admin__model__featured_version` (`id`, `title`, `menu_id`, `caption`, `label`, `description`, `image_file`, `thumb`, `note`, `information`, `css`, `is_active`, `sequence`, `created_at`, `updated_at`, `admin_subsite_id`, `deleted_at`, `version`) VALUES
(1, 'eCommerce', 0, '', '', '', '', '', '', '<p>\n	&nbsp;</p>', '', 0, 1, '2010-06-24 19:26:40', '2010-06-24 19:26:40', 1, NULL, 1),
(2, 'Web Optimisation', 0, '', '', '', '', '', '', '<p>\n	&nbsp;</p>', '', 0, 1, '2010-06-24 19:27:11', '2010-06-24 19:27:11', 1, NULL, 1),
(3, 'Bespoke Websites', 0, '', '', '', '', '', '', '<p>\n	&nbsp;</p>', '', 0, 1, '2010-06-24 19:27:31', '2010-06-24 19:27:31', 1, NULL, 1),
(4, 'Help & Support', 0, '', '', '', '', '', '', '<p>\n	&nbsp;</p>', '', 0, 1, '2010-06-24 19:27:55', '2010-06-24 19:27:55', 1, NULL, 1),
(8, 'Content Management', 40, '', '', '', '', '', '', '', '', 1, 1, '2010-06-25 11:43:28', '2010-06-25 11:43:28', 1, NULL, 1),
(9, 'Special Offers', 0, 'Hurry while offers last', 'professional design', '', '', '', '', '', '', 0, 1, '2010-06-25 12:57:57', '2010-06-25 12:57:57', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `admin_subsite_id`) VALUES
(1, 'Web Development', '', '2010-07-26 20:35:17', '2010-07-26 20:41:50', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE IF NOT EXISTS `blog_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_id_idx` (`blog_post_id`)
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
  `excerpt` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `blog_category_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sluggable_idx` (`slug`),
  KEY `blog_category_id_idx` (`blog_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `excerpt`, `is_active`, `blog_category_id`, `content`, `password`, `thumb`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `admin_subsite_id`, `slug`, `version`) VALUES
(1, 'test', '', 1, 1, '<p>\n	test<img alt="" src="/golive/media/image/graphics/original/search_engine_optimisation.png" style="width: 256px; height: 256px; float: left;" /></p>', '', '', '2010-07-26 20:47:29', '2010-07-26 20:51:25', NULL, 1, 1, 1, 'test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_comment`
--

CREATE TABLE IF NOT EXISTS `blog_post_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_post_id` int(11) DEFAULT NULL,
  `blog_comment_id` int(11) DEFAULT NULL,
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
-- Table structure for table `blog__model__blog_post_version`
--

CREATE TABLE IF NOT EXISTS `blog__model__blog_post_version` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL,
  `excerpt` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  `blog_category_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog__model__blog_post_version`
--

INSERT INTO `blog__model__blog_post_version` (`id`, `title`, `excerpt`, `is_active`, `blog_category_id`, `content`, `password`, `thumb`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `admin_subsite_id`, `slug`, `version`) VALUES
(1, 'test', '', 1, 1, '<p>\n	test</p>\n', '', '', '2010-07-26 20:47:29', '2010-07-26 20:47:29', NULL, 1, 1, 1, 'test', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'General', '', '2010-06-13 22:39:51', '2010-06-13 22:39:51', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`id`, `title`, `description`, `content`, `category_id`, `created_at`, `updated_at`, `version`, `created_by`, `updated_by`, `admin_subsite_id`) VALUES
(1, 'About Us', 'About Rhema Webdesign', '<h2>\n	About Rhema Webdesign</h2>\n<blockquote>\n	Our goal is to deliver high value, comprehensive web solutions that establish unrivalled web presence to meet you business objectives</blockquote>\n<p>\n	<img alt="rhema web design and development" src="/golive/media/image/graphics/original/rhema_web_design_development.png" style="float: right; width: 256px; height: 192px;" />Based in Coventry, West Midlands, Rhema Webdesign is a web design and development&nbsp; company offering total solutions to website creation, content management, ecommerce and <a href="search_engine_optimisation" title="Search Engine Optimisatiion">search engine optimisation</a>. Our services include web design and development, ongoing after sale maintenance and consultation over online marketing and advertising.</p>\n<p>\n	Clients just like you have chosen to avail our services and have gone on to enjoy tremendous growth in both revenue and awareness on the web. Our team will support you in web design, web development and internet marketing campaigns for top search engine rankings. We offer simple workable solutions that will drive your business ahead of your competitors.</p>\n<h4>\n	Core values</h4>\n<ul class="okList">\n	<li>\n		Integrity, transparency and honesty</li>\n	<li>\n		Quality Service</li>\n	<li>\n		Penchant for hard work</li>\n	<li>\n		Dedication and Professionalism</li>\n	<li>\n		A can do attitude</li>\n</ul>\n<p>\n	We pride ourselves in our unique multi-channel management system <a href="rhema_management_system_(rhemasys)" title="Rhema Management System">RhemaSys</a>, a suite of software solution to meet your eCommerce and content management needs. Amongst other features, you can create multiple unique websites running of the same&nbsp; database system with our in-house management system. An invaluable resource for companies with multiple branches. Click <a href="rhema_management_system_(rhemasys)" title="More about RhemaSys">here</a> to find out more about of management system.</p>\n<h3>\n	Why choose Rhema Webdesign</h3>\n<p>\n	We have established ourselves as one of the UK&#39;s leading web design companies because of our</p>\n<ul>\n	<li>\n		Unique in-house eCommerce and content management system</li>\n	<li>\n		High quality web design</li>\n	<li>\n		Unrivalled customer care</li>\n	<li>\n		Our 100% reliability</li>\n</ul>\n<h3>\n	How we work</h3>\n<ul>\n	<li>\n		We offer a free no obligation consultation where we gather a list of requirements to produce an estimated cost for your website.</li>\n	<li>\n		Once you are happy with the cost we will provide you with a detailed specification of the website for agreement, signature and authority to proceed.</li>\n	<li>\n		Once this specification has been signed, work on the website begins in earnest.</li>\n	<li>\n		Changes to the signed specification may result in an increase in cost and/or a delay to the website delivery, although any additional costs will be agreed before changes are made. Work will continue on the website with the customer involved throughout the development process. This is to ensure that Rhema Webdesign and the customer both can see the progress and overall scope of the project.</li>\n	<li>\n		When the website has been completed the customer signs the acceptance document.</li>\n</ul>', 1, '2010-02-06 22:11:37', '2010-07-03 22:03:14', 1, 1, 1, 1),
(2, 'Bespoke Websites', '', '<h2>\n	Bespoke Website Solutions</h2>\n<p>\n	<img alt="" src="/golive/media/image/graphics/original/web_design_graphic.gif" style="width: 300px; height: 300px; float: right;" />Want to use the web to make an impression? We deliver stunning, high-quality bespoke websites with outstanding web branding at competitive prices. Our designs range from basic brochure websites&nbsp; to&nbsp;tailored eCommerce and data integration designs, all our sites have maximum impact and superb quality.</p>\n<p>\n	Search engine optimisation, accessibility and usability are key requirements within our work.</p>\n<p>\n	Our works are fully project managed and we work closely with our clients so that we can deliver the best solutions and benefits to their businesses on time.</p>', 1, '2010-02-06 22:12:29', '2010-09-12 15:09:04', 1, 1, 1, 1),
(3, 'Blog Comments and Reviews', '', '<h2>\n	Blogging - Comments and Reviews</h2>\n<p>\n	<img align="right" alt="Blogging" border="2" height="200" src="/web/images/graphics/chat.png" style="padding-bottom: 5px; padding-left: 5px; padding-right: 5px; margin-left: 5px; padding-top: 5px" title="Blog - Comments and Reviews" width="200" /></p>\n', 1, '2010-02-06 22:13:29', '2010-02-06 22:13:29', 1, 1, 1, 1),
(4, 'Content Management System', '', '<h2>\n	Content Management Systems</h2>\n', 1, '2010-02-06 22:13:57', '2010-02-06 22:13:57', 1, 1, 1, 1),
(5, 'eCommerce', 'Description of what ecommerce websites entail', '<h2>\n	eCommerce Websites</h2>\n<p>\n	eCommerce websites allow web users to buy products and services securely via your website. They provide a great vehicle for making extra money for your business and has the advantage of being open 24 hours, 7 days a week with the added benefit or reaching a worldwide audience. The advantages eCommerce websites offer include:</p>\n<ul class="okList">\n	<li>\n		Increased sales - instantly sell your products globally</li>\n	<li>\n		Low overheads - slash the cost of staff, facilities and administration</li>\n	<li>\n		Measurable results - track the origin and profitability of every sale you make</li>\n	<li>\n		Less management - due to simplified processes and increased automation</li>\n	<li>\n		Low risk - because of fewer expenses and higher profit margins</li>\n</ul>\n<p>\n	<img alt="ecommerce" src="/golive/media/image/graphics/original/ecommerce.jpg" style="width: 256px; height: 204px; float: left;" />Built on our unique <a href="content-management-system" title="Content Management System">content management</a> and eCommerce platform - <a href="rhema-management-system" title="Rhema Management System">RhemaSys</a>, we bring the world to your doorstep. Our eCommerce solutions make it is easy for your customer to use and purchase from your website.&nbsp; All our eCommerce websites incorporate a shopping cart which is robust and stable.<br />\n	<br />\n	We don&#39;t use any of the out-the-box solutions rather we offer a custom solution, which means that your website can be designed to your wishes and our shopping cart can be integrated into your own unique looking website.</p>\n<p>\n	The features bundled in ecommerce and content management system provides benefits both for the web user and the site administrator. These benefits are summarised in the table below:</p>\n<table border="0" cellpadding="5" cellspacing="0" summary="This table lists the advantages of using our Rhema Management Systems" width="100%">\n	<thead>\n		<tr>\n			<th scope="col">\n				<h3>\n					Web User</h3>\n			</th>\n			<th scope="col">\n				<h3>\n					Site Administrators</h3>\n			</th>\n		</tr>\n	</thead>\n	<caption>\n		Advantages of using Rhema Management System (RhemaSys)</caption>\n	<tbody>\n		<tr>\n			<td valign="top" width="50%">\n				<ul>\n					<li>\n						Easy-to-use database drive shop</li>\n					<li>\n						Detailed product description</li>\n					<li>\n						Product reviews and comments on product detail page</li>\n					<li>\n						Easy and intuitive checkout process</li>\n					<li>\n						Email confirmation of orders</li>\n					<li>\n						Keyword search</li>\n					<li>\n						User registration and membership</li>\n					<li>\n						Order history shown on my account page</li>\n					<li>\n						Add to wish list</li>\n					<li>\n						Recommend-a-friend</li>\n				</ul>\n			</td>\n			<td valign="top">\n				<ul>\n					<li>\n						Add, edit and delete product categories</li>\n					<li>\n						Unlimited number of products and categories</li>\n					<li>\n						Simple upload of products images in real time</li>\n					<li>\n						Auto-generation of product images in different sizes from a single image file</li>\n					<li>\n						Integration with payment gateways for card processing e.g. PayPal</li>\n					<li>\n						In-built search engine optimisation features</li>\n					<li>\n						Auto-generation of product feeds for RSS syndication</li>\n					<li>\n						Administrative reporting tool\n						<ul>\n							<li>\n								Sales Report</li>\n							<li>\n								Stock Report</li>\n						</ul>\n					</li>\n					<li>\n						Stock control</li>\n					<li>\n						Sales Overview</li>\n					<li>\n						Access control</li>\n				</ul>\n			</td>\n		</tr>\n	</tbody>\n</table>', 1, '2010-02-06 22:14:27', '2010-06-28 23:59:13', 1, 1, 1, 1),
(6, 'Home page ', '', '<p>\n	<img alt="webdesign" src="/golive/media/image/graphics/original/website_design.jpg" style="float: left; padding-right: 10px; width: 263px; height: 256px;" /></p>\n<h3>\n	Making your website significant</h3>\n<p>\n	Your website is a direct reflection of your business and its professionalism. Rhemastudio understands the importance of making that first impression and capturing your client&#39;s attention. We will create your website with both the look and features you need to promote your business on the web using modern design methodologies and web technologies.</p>\n<h3>\n	Designing for your business</h3>\n<p>\n	We do not make a pattern of our work - only individual solution for every client built on <a href="rhemasys.php" title="Rhema Management System (RhemaSys)">RhemaSys</a>, our industry standard <a href="eCommerce" title="eCommerce">eCommerce</a> and <a href="Content_Management_System" title="Content Management System">content management system</a>. We do our best to show the identity of your company and point out its nature and individuality, and that&#39;s the shortest way to the top for you.</p>\n<blockquote>\n	<h3>\n		Invaluable experience at your disposal</h3>\n	<p>\n		Anyone can build a website but if you want a website that is search engine optimised, easy to use, has good cross-browser compatibility and looks good then it takes a lot of experience.</p>\n</blockquote>', 1, '2010-02-06 22:14:50', '2010-07-16 00:00:21', 1, 1, 1, 1),
(7, 'Main Banner', '', '<p>\n	<img alt="" src="/golive/media/image/graphics/original/banner_2.png" style="width: 980px; height: 314px;" /></p>', 1, '2010-02-06 22:15:21', '2010-07-15 22:26:07', 8, 1, 1, 1),
(8, 'Main Features', '', '<div class="featured-wrap">\r\n	<div class="feature red">\r\n		<h2>\r\n			Website Design</h2>\r\n		Establish your online presence in style</div>\r\n	<div class="feature blue">\r\n		<h2>\r\n			Content Management System</h2>\r\n		Update and manage your content easily</div>\r\n	<div class="feature green">\r\n		<h2>\r\n			eCommerce Websites</h2>\r\n		Sell your products and services with ease online</div>\r\n	<div class="feature orange">\r\n		<h2>\r\n			Brochure Websites</h2>\r\n		Simple but effective websites</div>\r\n	<div class="feature">\r\n		<h2>\r\n			SEO Optimisation</h2>\r\n		Rank high and get found by search engines</div>\r\n	<div class="feature">\r\n		<h2>\r\n			Bespoke Developments</h2>\r\n		We deliver exactly what you need for your business</div>\r\n</div>\r\n', 1, '2010-02-06 22:15:45', '2010-06-19 20:36:53', 1, 1, 1, 1),
(9, 'Privacy Policy', '', '<h2>\n	Privacy Policy</h2>\n<p>\n	We are committed to ensuring that your information is secure. Rhema Studio may change this policy from time to time by updating this page. Please check this page from time to time to ensure that you are happy with any changes.</p>\n<ul>\n	<li>\n		<a href="#rec">Commitment to Your Privacy</a></li>\n	<li>\n		<a href="#gather">Information Rhema Studio Gathers and Tracks.</a></li>\n	<li>\n		<a href="#what">What We Do With the Information We Gather.</a></li>\n	<li>\n		<a href="#security">Security</a>.</li>\n	<li>\n		<a href="#cookies">How We use Cookies.</a></li>\n	<li>\n		<a href="links">Links to Other Websites.</a></li>\n	<li>\n		<a href="#disclaim">Disclaimer.</a></li>\n	<li>\n		<a href="#control">Controlling Your Personal Information.</a></li>\n	<li>\n		<a href="#consent">Your Consent. </a></li>\n</ul>\n<ol id="main">\n	<li>\n		<h3>\n			Commitment to your Privacy</h3>\n		<ol id="sub">\n			<li>\n				This site is owned and operated by Rhema Studio. Your privacy on the Internet is of the utmost importance to us. At Rhema Studio, we want to make your experience online satisfying and safe.</li>\n			<li>\n				Because we gather certain types of information about our users, we feel you should fully understand our policy and the terms and conditions surrounding the capture and use of that information. This privacy statement discloses what information we gather and how we use it.</li>\n			<li>\n				Rhema Studio may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from 01JAN07.</li>\n		</ol>\n	</li>\n	<li>\n		<h3>\n			<a id="gather" name="gather"></a>Information Rhema Studio Gathers and Tracks</h3>\n		We may collect the following information:\n		<ol id="sub">\n			<li>\n				Name and job title</li>\n			<li>\n				Contact information including email address</li>\n			<li>\n				Demographic information such as post code, preferences and interests</li>\n			<li>\n				Other information relevant to customer surveys and/or offers</li>\n		</ol>\n		Generally, these include the Information that users provide through optional, voluntary submissions. These are voluntary submissions to participate in our message boards or forums, to email a friend.</li>\n	<li>\n		<h3>\n			<a id="what" name="what"></a>What we do with the Information we Gather</h3>\n		We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:\n		<ol id="sub">\n			<li>\n				Internal record keeping.</li>\n			<li>\n				We may use the information to improve our products and services.</li>\n			<li>\n				We may periodically send promotional email about new products, special offers or other information which we think you may find interesting using the email address which you have provided.</li>\n			<li>\n				From time to time, we may also use your information to contact you for market research purposes. We may contact you by email, phone, fax or mail.</li>\n			<li>\n				We may use the information to customize the website according to your interests.</li>\n		</ol>\n		Rhema Studio will also collect information to process your order and to provide you with the best possible service.</li>\n	<li>\n		<h3>\n			<a id="security" name="security"></a>Security</h3>\n		We are committed to ensuring that your information is secure. In order to prevent unauthorized access or disclosure we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the information we collect online.</li>\n	<li>\n		<h3>\n			<a id="cookies" name="cookies"></a>How we use Cookies</h3>\n		<ol id="sub">\n			<li>\n				A cookie is a small file which asks permission to be placed on your computer&#39;s hard drive. Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its operations to your needs, likes and dislikes by gathering and remembering information about your preferences.</li>\n			<li>\n				We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic and improve our website in order to tailor it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.</li>\n			<li>\n				Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way gives us access to your computer or any information about you, other than the data you choose to share with us.</li>\n			<li>\n				You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. This may prevent you from taking full advantage of the website.</li>\n		</ol>\n	</li>\n	<li>\n		<h3>\n			<a id="links" name="links"></a>Links to other Websites</h3>\n		Our website may contain links to enable you to visit other websites of interest easily. However, once you have used these links to leave our site, you should note that we do not have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the website in question.</li>\n	<li>\n		<h3>\n			<a id="disclaim" name="disclaim"></a>Disclaimer</h3>\n		Rhema Studio does not support or endorse the accuracy or reliability of any information, content or advertisements contained, distributed through, or linked, downloaded from the services and businesses contained on this website. We do not endorse the quality of any services, products, information or materials displayed, purchased, or obtained by you as a result of an advertisement or any other information on Rhema Studio. Rhema Studio reserves the right, without any obligation whatsoever, to make improvements to, remove any business listing or correct any error or omissions in any part of the directory.</li>\n	<li>\n		<h3>\n			<a id="control" name="control"></a>Controlling you Personal Information</h3>\n		You may choose to restrict the collection or use of your personal information in the following ways:\n		<ol id="sub">\n			<li>\n				Whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by anybody for direct marketing purposes.</li>\n			<li>\n				If you have previously agreed to us using your personal information for direct marketing purposes, you may change your mind at any time by writing to or emailing us at info@rhemastudio.com</li>\n			<li>\n				We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law. We may use your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this to happen.</li>\n			<li>\n				You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee will be payable. If you would like a copy of the information held on you please write to 106 Rotherham Road, Coventry CV6 4FR.</li>\n			<li>\n				If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible, at the above address. We will promptly correct any information found to be incorrect.</li>\n		</ol>\n	</li>\n	<li>\n		<h3>\n			<a id="consent" name="consent"></a>Your Consent</h3>\n		By using this site, you consent to the collection and use of this information by Rhema Studio. If we decide to change our privacy policy, we will post those changes on this page so that you are always aware of what information we collect, how we use it, and under what circumstances we disclose it.</li>\n</ol>', 1, '2010-02-06 22:16:14', '2010-03-01 22:23:53', 1, 1, 1, 1),
(10, 'Rhema Management System', '', '<h2>\n	RhemaSys - Rhema Management System</h2>\n<blockquote>\n	<p>\n		We pride ourselves on our unique multi-channel management system, a suite of software solutions that meet your eCommerce and content management needs.</p>\n</blockquote>\n<p>\n	<span class="MainCopy">The backbone of every website designed &nbsp;by Rhema Webdesign i</span><span class="MainCopy">s <strong>RhemaSys,</strong>&nbsp;</span> our unique in-house multi-channel suite of software solutions that meets your <a href="Ecommerce" title="Ecommerce">eCommerce</a> and <a href="Content_Management_System" title="Content Management System">content management</a> needs<span class="MainCopy">. RhemaSys is a search engine friendly publishing tool that puts you in the drivers seat, giving you and your staff full control over the content displayed on your website.</span> It is a simple and effective online tool which allows you to create and manage your own page content, design and structure web pages without getting involved in programming.You don&#39;t need anything except an Internet browser because you simply login to the admin panel of your website to gain access to a host of administrative tools.</p>\n<h3>\n	Benefits of RhemaSys</h3>\n<ul class="okList">\n	<li>\n		You can easily manage you web content without any programming skills.</li>\n	<li>\n		RhemaSys is packed with features to easy content management tasks.</li>\n	<li>\n		There is no limit to the number of pages you can create.</li>\n	<li>\n		We can easily add any bespoke feature to your website.</li>\n	<li>\n		You website&#39;s content is database driven, which means we can back-up your website with and re-create it if data is accidentally lost.</li>\n	<li>\n		You can create multiple websites using the same database.</li>\n	<li>\n		We can easily change the front-end design of your website without affecting the back-end system. Which means you can have multiple designs for your website and switch as and when required.</li>\n	<li>\n		You get free upgrades.</li>\n</ul>\n<p>\n	Once your content managed website is set up, we will provide one-to-one training on how to use it.&nbsp; There are also instructions, tips and help within RhemaSys to guide you along the way.</p>\n<h3>\n	Main Features</h3>\n<p>\n	The main features of RhemaSys include:</p>\n<ol>\n	<li>\n		Multi-channel system\n		<ul>\n			<li>\n				Create multiple websites within the same hosting account with a click of a button. Each website with its own unique look and feel.</li>\n			<li>\n				Clone a website with a click of a button. All websites created are search engine optimised by default.</li>\n			<li>\n				Control the information that is shared across multiple websites. You can show case the same products on multiple websites or specify the products you want shown on specific website.</li>\n		</ul>\n	</li>\n	<li>\n		Website management\n		<ul>\n			<li>\n				Create and manage unlimited number of web pages easily and effectively using our in-build content editor. Just like creating a WORD document.</li>\n			<li>\n				Build and manage multi-level navigation menus by drag-n-drop.</li>\n			<li>\n				Create unique page templates from our library of page sections. Easily switch page templates to suit your needs without data loss.</li>\n		</ul>\n	</li>\n	<li>\n		<a href="ecommerce" title="eCommerce">eCommerce</a>\n		<ul>\n			<li>\n				Build and manage product navigation trees by drag-n-drop.</li>\n			<li>\n				Create and manage product categories.</li>\n			<li>\n				Stock Control. View and manage stock levels.</li>\n			<li>\n				Manage product images, information and availability.</li>\n			<li>\n				View, manage and track online orders.</li>\n		</ul>\n	</li>\n	<li>\n		<a href="comments_and_reviews" title="Blogging - Comments and Reviews">Blog Posts, Comments and Reviews</a>\n		<ul>\n			<li>\n				Add keyword rich post and articles to your site to boost <a href="search_engine_optimisation" title="Search Engine Optimisation">search engine optimisation</a>.</li>\n			<li>\n				Users can leave comments on your blog posts. No easier way to get keyword-rich content on you website.</li>\n			<li>\n				Allow users review your products. Customers value product reviews more that price.</li>\n			<li>\n				Moderate comments and reviews. Control what is displayed on your website.</li>\n		</ul>\n	</li>\n</ol>\n<p>\n	RhemaSys is packed with features to boost online sales and you make content management tasks easy. You will wonder how you coped without it. In addition, we can easily incorporate bespoke feature to meet your specific needs. Contact us to test drive RhemaSys by using our <a href="contact_us" title="Contact Us">contact form</a>.</p>', 1, '2010-02-06 22:16:50', '2010-07-09 21:57:21', 1, 1, 1, 1),
(11, 'Search Engiine Optimisation', '', '<h2>\n	Search Engine Optimisation (SEO)</h2>\n<p>\n	Designing and developing your website is the first step to creating an online presence. If no one knows your website is online no one will visit your website. <img alt="search engine optimisation" src="/golive/media/image/graphics/original/search_engine_optimisation.png" style="padding: 5px; margin-right: 5px; float: right; width: 256px; height: 256px;" />It is therefore important to understand how your website will perform when potential customers are searching for your products and services on search engines.</p>\n<p>\n	Search engine optimisation is the name given to the art of making your company appear when potential customers search for&nbsp; products and services you can supply. Successful Search Engine Optimisation (SEO) is a crucial part of our <a href="webdesign-design-development" title="Web Design and Development">web design and development</a>&nbsp; endeavours . From the onset of your project, search engine optimisation is always foremost in our thinking.</p>\n<p>\n	&nbsp;Websites built on our in-house system <a href="rhema-management-system" title="Rhema Management System">RhemaSys</a> are search engine optimised and automatically updated with any change in search behaviour.</p>\n<h3>\n	Professional Website Optimisation Services</h3>\n<p>\n	<strong>Rhema Webdesign</strong> provides effective and ethical optimisation to get your website noticed. We will review and audit your web site and explain its position in the natural search engine rankings. This review will be followed by recommendations of the changes required to your web site to improve its position. We<strong> </strong>will then provide a summary of our findings and our suggestions and recommendations, highlighting the areas that suggest possible improvements to your web site.</p>\n<p>\n	Our suggestions and recommendations for optimising your website would cover:</p>\n<ol class="mainBodyList">\n	<li>\n		<strong>Keywords</strong>\n		<p class="noSpace">\n			If potential customers are looking for a service or product you supply but have not dealt with you previously, they would be searching for the product or services using keywords. We endeavour to optimise your website by:</p>\n		<ul>\n			<li>\n				Assessing your keywords.</li>\n			<li>\n				Researching your keywords to see if these are what your potential customers are looking for.</li>\n			<li>\n				Ensuring those keywords are used prominently and relevantly on your pages so that the search engines will recognise your website.</li>\n			<li>\n				Increasing the amount of relevant text and keywords on your website whilst maintaining its look and feel</li>\n			<li>\n				Ensuring that all search engine specific data is included in your website.</li>\n		</ul>\n	</li>\n	<li>\n		<strong>Graphics and Images</strong>\n		<ul>\n			<li>\n				Search engines cannot see pictures therefore they need to be guided by words. In our design process we give appropriate and effective titles and labels to images displayed&nbsp; on your website. This also helps partially sighted users view your website.</li>\n		</ul>\n	</li>\n	<li>\n		<strong>Links and Back Links</strong>\n		<ul>\n			<li>\n				We get your website connected to other relevant sites and vice versa by creating relevant back links. Search engines use connections like these to judge how valuable and relevant other sites are to your website.</li>\n			<li>\n				Include a site map &ndash; a set of directions to your site for the search engines. This makes their job easier and makes it more likely they will find all the information on your website.</li>\n		</ul>\n	</li>\n	<li>\n		<strong>Friendly URLs</strong>\n		<ul>\n			<li>\n				We ensure that all URLs and links displayed on your website are user friendly with descriptive text rather than dynamically generated links cluttered with query strings. Below are examples of friendly and unfriendly URLs.\n				<ul class="noList">\n					<li class="friendly">\n						http://www.rhema-webdesign.com/webdesign_and_development</li>\n					<li class="unfriendly">\n						http://www.rhema-webdesign.com/webdesign.php?action=EditRecord&amp;table=rms_comp&amp;ID=19&amp;curGrp=Content&amp;menuID=22</li>\n				</ul>\n			</li>\n		</ul>\n	</li>\n	<li>\n		<strong>Usability and Compliance</strong>\n		<p class="noSpace">\n			We ensure that all our websites and web pages:</p>\n		<ul class="okList">\n			<li>\n				Comply with the W3C usability standards.</li>\n			<li>\n				Are accessible on mobile media.</li>\n			<li>\n				Cross-browser compatible.</li>\n		</ul>\n	</li>\n</ol>\n<p>\n	Search engine optimisation is not a one-off quick fix, it requires continued monitoring to see how a website is rating and any changes in search behaviour are incorporated into your website&#39;s pages.</p>\n', 1, '2010-02-06 22:17:22', '2010-07-03 22:55:29', 1, 1, 1, 1),
(12, 'Terms and Conditions', '', '<h2>\n	Terms and Conditions</h2>\n<p>\n	Please read our terms and conditions which govern the services we offer and provide. If you have any queries, do not hesistate to contact us. These terms and conditions supersede any and all expressed or verbal terms and conditions. Any exceptions must be negotiated.</p>\n<div id="terms">\n	<ol id="main">\n		<li id="licop">\n			<h3>\n				<a href="" onclick="$(''candp'').toggle(); return false;">Costs and Payments</a></h3>\n			<ol class="sub" id="candp" style="display: none">\n				<li>\n					You must pay all charges as set out in the Quote. Cost estimates (and price quotes provided by Rhema Webdesign) are only valid for a period of 30 days.</li>\n				<li>\n					You will remain liable for all fees during any period when Services have been discontinued or suspended due to a failure on your part to comply with these terms and conditions.</li>\n				<li>\n					You will be invoiced as agreed in your quote. All accounts are payable before delivery of final artwork or uploading of final files to live sites.</li>\n				<li>\n					You are liable to pay overdue interest at 5 % /week on any amounts not paid within 7 days of invoice. All intellectual property rights remain with Rhema Webdesign until payment.</li>\n				<li>\n					All invoices have to be paid within 3 days. A late payment charge of &pound;50 will be applicable on all payments not made on time. You are also liable to pay overdue interest at 5 % per week on any amounts not paid. All intellectual property rights remain with Rhema Webdesign until payment.</li>\n				<li>\n					You must pay Rhema Webdesign.s charges without any set off, counter claim or deduction unless same is agreed in writing between us.</li>\n				<li>\n					Rhema Webdesign reserves the right to prioritize early paying clients and to charge urgency fees for turnaround within 3 working days. (VIP status).</li>\n				<li>\n					Agreed Costing is conditional on your supplying data required for a Website Stage or completion deadline agreed within 10 working days of confirmation of Order. Rhema Webdesign reserves the right to revise costings if that condition is not met in line with charges applying at the relevant time.</li>\n				<li>\n					<strong>No final artwork or files will be delivered until final invoices are paid in full.</strong> Payment by cheque will entail waiting for clearance before supply of files. Delivery being :Supply of final artwork digital files to printer <strong>or</strong> on disk <strong>or</strong> via email or uploaded to nominated ISP. Construction files or code files or script files remain the property of Rhema Webdesign.</li>\n				<li>\n					Printer or ISP Liason is charged at our current rate per hour.</li>\n				<li>\n					Quotations and proposals must be accepted in writing by letter or fax or email, or by signing the quotation or proposal. Acceptance of the quotation or proposal must be accompanied by a 50% deposit unless otherwise agreed.</li>\n				<li>\n					Deposits can be made by credit card, cheque or direct bank transfer.</li>\n				<li>\n					<strong>Design work will not commence until the deposit has been received and cleared.</strong></li>\n				<li>\n					Where progress payments are stipulated in a quotation or proposal, they will fall due and payable as specified in the quotation or proposal. Overdue progress payments may result in suspension of design works in progress until such time as all amounts in arrears including interest are paid in full.</li>\n				<li>\n					<ul id="subsub">\n						<li>\n							Rhema Webdesign reserves the right to recover all costs associated with recovering unpaid invoices, including legal and administrative costs.</li>\n						<li>\n							Rhema Webdesign reserves the right to recover intellectual property in cases where there is non-payment by any means it sees fit.</li>\n					</ul>\n				</li>\n				<li>\n					Rhema Webdesign reserves the right to revise and or alter initial quotes based on changes in website scope, changes or additional work provided by the client in addition to quote provided.</li>\n			</ol>\n		</li>\n		<li id="lilol">\n			<h3>\n				<a href="Limitation_of_Liability" onclick="$(''lofl'').toggle(); return false;">Limitation of Liability</a></h3>\n			<ol class="sub" id="lofl" style="display: none">\n				<li>\n					All terms conditions, warranties, undertakings inducements and representations, whether express or implied, statutory or otherwise relating to the provision of services by Rhema Webdesign not contained in the Agreement are excluded and Rhema Webdesign <em>will not accept liability for an loss or damange (inclucing consequencial loss of damage however caused (whether by negligence or otherwise) which may be suffered or incurred or which may arise directly or indirectly</em><strong> </strong>with respect to the service.</li>\n				<li>\n					Where any applicable legislation implies any term, condition or warranty into the Agreement or in respect of Rhema Webdesign.s relationship with you, or otherwise gives you a particular remedy against Rhema Webdesign and the legislation or any other legislation renders void or prohibits provisions excluding or modifying the application of, exercise of, or liability under such implied term, condition, warranty or remedy will be deemed to be included in the Agreement or as the case may require apply to the relationship between Rhema Webdesign and you. However, Rhema Webdesign.s liability for any such breach of such implied term, condition or warranty or under such remedy, will be limited, at Rhema Webdesign.s option, in any one or more of the ways permitted in that legislation, including, where so permitted if the breach relates to Services the supplying of those services again.</li>\n				<li>\n					You acknowledge that web sites cannot be guaranteed to be 100% error free in construction and acknowledge that the existence of errors falling short of a complete failure of consideration in the site shall not constitute a reason to terminate this agreement.</li>\n			</ol>\n		</li>\n		<li id="lisos">\n			<h3>\n				<a href="Suspension_of_Services" onclick="$(''sofs'').toggle(); return false;">Suspension of Services</a></h3>\n			<ol class="sub" id="sofs" style="display: none">\n				<li>\n					Rhema Webdesign reserves the right to suspend services in any case where you fail to perform your obligations under this agreement. If payment for services is not received within the terms of payment stipulated by us websites may be taken down until payment is confirmed.</li>\n				<li>\n					Rhema Webdesign may from time to time and without notice or liability to you suspend any of the services if the reason for doing same is an event beyond the reasonable control of Rhema Webdesign.</li>\n			</ol>\n		</li>\n		<li id="literm">\n			<h3>\n				<a href="Termination" onclick="$(''terminate'').toggle(); return false;">Termination</a></h3>\n			<ol class="sub" id="terminate" style="display: none">\n				<li>\n					Rhema Webdesign may discontinue services if an amount payable to Rhema Webdesign is overdue or take down a website permanently in any case where an amount payable is overdue by more than 7 days. In any such event, you remain liable for the total cost of the contract including all disbursements; unless otherwise agreed between the parties.</li>\n			</ol>\n		</li>\n		<li id="licont">\n			<h3>\n				<a href="Contents_of_Web_Pages_and_Undertakings" onclick="$(''contents'').toggle(); return false;">Contents of Web Pages and Undertakings</a></h3>\n			<ol class="sub" id="contents" style="display: none">\n				<li>\n					You will be solely responsible for the content of your Web Page/undertakings. Rhema Webdesign is not responsible for proofreading any content unless specifically agreed.</li>\n				<li>\n					Rhema Webdesign makes no representations to you concerning the content or functionality of your Web Site. This is your responsibility to ensure that it meets your requirements.</li>\n				<li>\n					If you provide Rhema Webdesign with goods, material, photographs, film, data or information to be used in any form, you hereby warrant that these do not infringe the rights of third parties and indemnify Rhema Webdesign against any action taken against Rhema Webdesign by any such third party.</li>\n				<li>\n					Without limiting the generality of the foregoing, you agree not to infringe the copyright trademark, privacy or personal or proprietary rights of third parties, supply libelous, abusive, obscene material or disparage the products or services of any third party.</li>\n				<li>\n					Rhema Webdesign for its part hereby undertakes not to knowingly infringe the rights of third parties in activities conducted on your behalf.</li>\n				<li>\n					You are solely responsible for dealing with persons who access your data or webpage and warrant that you will not refer complaints or inquiries in relation to such data to us.</li>\n				<li>\n					You acknowledge that web design and development work does not include the tasks and jobs of SEO (Search Engine optimization) and W3C validation. These are seperate jobs and if you want these to be undertaken by Rhema Webdesign, you will have to agree with Rhema Webdesign in writing and will be subject to seperate and extra cost.</li>\n			</ol>\n		</li>\n		<li id="litech">\n			<h3>\n				<a href="Technical_Support_Changes_and_Maintenance" onclick="$(''tech'').toggle(); return false;">Technical Support, Changes and Maintenance</a></h3>\n			<ol class="sub" id="tech" style="display: none">\n				<li>\n					Technical assistance will be offered via email. You acknowledge that all technical or support or maintenance queries will be sent by you via email to <strong>maintenance@rhema-webdesign.com</strong></li>\n			</ol>\n		</li>\n		<li id="liintell">\n			<h3>\n				<a href="Intellectual_Property" onclick="$(''intell'').toggle(); return false;">Intellectual Property</a></h3>\n			<ol class="sub" id="intell" style="display: none">\n				<li>\n					All creation files remain the property of Rhema Webdesign.</li>\n				<li>\n					Rhema Webdesign retains the Copyright in and the right to use all artwork created in advancing the profile of Rhema Webdesign and to be recognized for artwork created by Rhema Webdesign.</li>\n			</ol>\n		</li>\n		<li id="licanc">\n			<h3>\n				<a href="Cancellation_and_Termination#" onclick="$(''cancel'').toggle(); return false;">Cancellation and Termination</a></h3>\n			<ol class="sub" id="cancel" style="display: none">\n				<li>\n					Cancellation of an agreed quotation or proposal by you must be communicated to Rhema Webdesign both by telephone and in writing (letter, fax or email).</li>\n				<li>\n					Once design work has commenced, the deposit is not refundable. Where the project is cancelled at your request, any costs accrued by Rhema Webdesign over and above the deposit will be invoiced to you and will be due and payable immediately.</li>\n				<li>\n					Where design work has been agreed to and the project is cancelled at your request and where the design work has not yet commenced, a termination fee of 25% of the agreed quotation or proposal or the total of costs accrued by Rhema Webdesign to date will apply (whichever is greater).\n					<ul id="subsub">\n						<li>\n							Works in progress can be postponed at your request in writing. All outstanding costs to date will be invoiced to you and be payable immediately.</li>\n						<li>\n							Where you postpone a project in accordance with clause (iv)(a) of this section, work will be restarted and completed at your instruction in accordance with the specifications of the original quotation.</li>\n						<li>\n							Notwithstanding clause (iv)(b) of this section, work resumed after postponement will be subject to cost revision. Work will not restart until revised costing (if any) has been agreed to in writing.</li>\n						<li>\n							Rhema Webdesign reserves the right to terminate services where\n							<ul id="subsubsub">\n								<li>\n									there are outstanding invoices, or</li>\n								<li>\n									there is a material breach of these terms and conditions.</li>\n							</ul>\n						</li>\n						<li>\n							Rhema Webdesign will be entitled to cancel any agreement with you where you become insolvent, enter into voluntary arrangements with creditors, enter receivership or cease trading for any reason. This will be done without prejudice to any other rights or remedies available to Rhema Webdesign. Amounts owing will be invoiced and immediately due and payable.</li>\n					</ul>\n				</li>\n			</ol>\n		</li>\n	</ol>\n	<a href="#" onclick="Effect.ScrollTo(''terms''); return false;">Top</a></div>\n', 1, '2010-02-06 22:18:04', '2010-02-06 22:18:04', 1, 1, 1, 1),
(13, 'Web Hosting', '', '<h2>Web Hosting</h2>', 1, '2010-02-06 22:18:29', '2010-02-06 22:18:29', 1, 1, 1, 1),
(14, 'Web Support and Maintenance', '', '<h2>Support and Maintenance</h2>\r\n<p><img border="2" align="left" height="212" width="256" src="/web/images/graphics/image_tech_support.png" alt="web support" title="support and maintenace" style="padding: 5px; margin-right: 5px;" />We provide a full ongoing after sales service to help you promote and update  your web site portfolio at any stage, thus helping your business and web site  stay fresh in an ever changing market.</p>', 1, '2010-02-06 22:18:56', '2010-02-06 22:18:56', 1, 1, 1, 1),
(15, 'Web design and development', '', '<h2>Web Design and Development</h2>\r\n<blockquote>\r\n<p>Your website is an important part of your overall <a href="marketing" title="Marketing &amp; Advertisement">marketing strategy</a><span class="MainCopy"> hence we create a valuable online resource that provides your customers with access to up-to-date information.</span></p>\r\n</blockquote>\r\n<p><img border="2" align="left" height="155" width="162" src="/web/images/graphics/web_design.jpg" alt="webdesign" title="Webdesign and Development" style="padding: 5px; margin-right: 5px;" />For your online presence to leave a lasting impression, your website needs to exude credibility, professionalism and quality. We understand that in an arena saturated with billions of web pages, a well designed website is vitally important to marketing, building brand awareness and attracting prospective customers.</p>\r\n<p>The <a href="Web_Technologies" title="Web Development Technologies">technology</a> behind your website is equally as important as the website''s design. If not planned and implemented properly, you may be redeveloping your website again within a year. At Rhema Webdesign, we ensure that every website we build is of the highest quality and <a href="http://www.w3.org/" title="World Wide Web Consortium">W3C</a> complaint using the best technologies.</p>\r\n<h3>Design Experience</h3>\r\n<p>Rhema Webdesign has the experience to understand what works on the web and what doesn''t. We begin every web design project first by understanding your business and your customers&nbsp; prior to developing the ideal website that meets your needs. We specialise in attractive and easy to use&nbsp; websites that focus on getting the message across rather than filling the screen with bells and whistles. The websites we design fall into the following categories:</p>\r\n<ul>\r\n    <li><a href="bespoke_websites" title="Bespoke Websites">Bespoke Websites</a><br />\r\n    Get tailor-made web solutions to streamline your business processes. We deliver exactly what you need. How you need it, when you need it.&nbsp;<span class="readMore"><a href="bespoke_websites" title="Read more about Bespoke Websites">read more ...</a></span></li>\r\n    <li><a href="brochure_websites" title="Brochure Websites">Brochure Websites</a><br />\r\n    A simple and effective means of establishing an on-line presence by displaying contents that do not require frequent updates. <span class="readMore"><a href="brochure_websites" title="Read more about Brochure Websites">read more ...</a></span></li>\r\n    <li><a href="content_management_system" title="Content Managemen Systems (CMS)">Content Management Systems (CMS)</a><br />\r\n    Create and manage web pages, page contents, overall website design and structure without getting involved in programming. Website''s content is powered by a database system. <span class="readMore"><a href="content_management_system" title="Read more about Content Management Systems (CMS)">read more ...</a></span></li>\r\n</ul>\r\n<p>Any website that is to become successful as a sales and marketing tool needs to be intuitive and easy to use for both first-time and repeated visitors. To this end we ensure that all websites we design are:</p>\r\n<ul class="okList">\r\n    <li>Presentable with inviting layout and content</li>\r\n    <li>Clearly display the products and services offered</li>\r\n    <li>Simple with intuitive navigation system</li>\r\n    <li>Clear with visible points of contacts</li>\r\n    <li>Uncluttered with relevant information</li>\r\n</ul>\r\n<h3>Empowering Customers</h3>\r\n<p>From simple marketing sites to full scale <a href="ecommerce" title="eCommerce Websites">eCommerce</a> operations Rhema Webdesign processes the skills and experience to launch and develop your business on-line.<span class="MainCopy"> From our experience, we realise that your website goes beyond an initial business launch or a short term promotion. It should be viewed as a long term business asset that forms the foundation of your brand identity and marketing strategy. For this reason, we&nbsp; build all our websites with <a href="rhema_management_system_(rhemasys)" title="Rhema Management System">content management</a> functionality. </span></p>\r\n<p><span class="MainCopy">By empowering you with tools to update and manage your website, we create a valuable online resource that provides your customers with access to up-to-date information.</span></p>', 1, '2010-02-06 22:19:19', '2010-02-06 22:19:19', 1, 1, 1, 1),
(16, 'Feed Icon', '', '', 1, '2010-06-18 21:25:27', '2010-06-18 21:27:28', 1, 1, 1, 1);

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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_brand`
--


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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `sluggable_idx` (`slug`),
  KEY `ecom_tax_id_idx` (`ecom_tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_category`
--


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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
  `is_default` int(11) DEFAULT '0',
  `ecom_display_type_id` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
  `description` varchar(45) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `module` varchar(45) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `sequence` int(11) DEFAULT '0',
  `action` varchar(45) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `is_visible` tinyint(4) DEFAULT '1',
  `is_label` tinyint(4) NOT NULL DEFAULT '0',
  `ecom_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `root_id` bigint(20) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecom_category_id_idx` (`ecom_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_navigation_menu`
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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
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
  `price` double DEFAULT '0',
  `discount_percent` double DEFAULT '0',
  `rrp` double DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `is_enabled` tinyint(4) DEFAULT '1',
  `is_taxable` tinyint(4) DEFAULT '1',
  `ecom_tax_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `sluggable_idx` (`slug`),
  KEY `ecom_brand_id_idx` (`ecom_brand_id`),
  KEY `ecom_tax_id_idx` (`ecom_tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_product`
--


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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_tax`
--


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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ecom_attribute_id_idx` (`ecom_attribute_id`),
  KEY `ecom_display_template_id_idx` (`ecom_display_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ecom_template_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE IF NOT EXISTS `featured` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `title`, `menu_id`, `caption`, `label`, `description`, `image_file`, `thumb`, `note`, `information`, `css`, `is_active`, `sequence`, `created_at`, `updated_at`, `admin_subsite_id`, `deleted_at`, `version`, `created_by`, `updated_by`) VALUES
(1, 'eCommerce', 14, 'Sell your products online', '& online marketing', '', '', '/golive/media/image/graphics/thumbnail/shopping-cart.png', '', '', '', 1, 1, '2010-06-24 19:26:40', '2010-06-28 16:34:05', 1, NULL, 1, 1, 1),
(2, 'Web Optimisation', 48, 'Rank high and get noticed', '& search engine optimisation', '', '', '/golive/media/image/graphics/thumbnail/analytics.png', '', '', 'red', 1, 1, '2010-06-24 19:27:11', '2010-06-29 00:24:04', 1, NULL, 1, 1, 1),
(3, 'Bespoke Websites', 49, 'Tailored to your  needs', '& startup websites', '', '', '/golive/media/image/graphics/thumbnail/design_and_development.png', '', '', '', 1, 1, '2010-06-24 19:27:31', '2010-06-28 16:36:31', 1, NULL, 1, 1, 1),
(4, 'Online Help', 0, 'Help when you need it', 'Support and Maintenance', '', '', '/golive/media/image/graphics/thumbnail/web_support.png', '', '', '', 1, 1, '2010-06-24 19:27:55', '2010-06-28 16:34:33', 1, NULL, 1, 1, 1),
(8, 'Content Management', 40, 'Create and manage easily', '& effective page design', '', '', '/golive/media/image/graphics/thumbnail/content_management_system.png', '', '', '', 1, 1, '2010-06-25 11:43:28', '2010-06-28 16:36:55', 1, NULL, 1, 1, 1),
(9, 'Special Offers', 0, 'Hurry while offers last', 'professional design', '', '', '', '', '', '', 0, 1, '2010-06-25 12:57:57', '2010-06-25 12:57:57', 1, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `help_boiler_plate`
--

CREATE TABLE IF NOT EXISTS `help_boiler_plate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text,
  `content` longtext NOT NULL,
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
  `title` text NOT NULL,
  `description` text,
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
  `title` text,
  `description` text,
  `keyword` text,
  `content` longtext,
  `answer` text,
  `related_item` text,
  `question` text,
  `module` int(11) DEFAULT NULL,
  `help_type_id` int(11) NOT NULL,
  `help_category_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `admin_group_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sluggable_idx` (`slug`),
  KEY `help_category_id_idx` (`help_category_id`),
  KEY `help_type_id_idx` (`help_type_id`)
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
  `title` text NOT NULL,
  `label` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_mandatory` tinyint(4) DEFAULT '1',
  `is_searchable` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `help_field`
--

INSERT INTO `help_field` (`id`, `title`, `label`, `description`, `is_mandatory`, `is_searchable`, `created_at`, `updated_at`) VALUES
(1, 'title', 'Title', '', 1, 0, '2010-07-12 22:58:09', '2010-07-12 22:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `help_section`
--

CREATE TABLE IF NOT EXISTS `help_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` text,
  `sequence` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `help_section`
--

INSERT INTO `help_section` (`id`, `title`, `description`, `sequence`, `created_at`, `updated_at`) VALUES
(1, 'Top', '', 1, '2010-07-12 22:58:53', '2010-07-12 22:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `help_template`
--

CREATE TABLE IF NOT EXISTS `help_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `help_template`
--

INSERT INTO `help_template` (`id`, `title`, `description`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'The is the default template', '', '2010-07-12 22:42:35', '2010-09-03 01:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `help_template_boiler_plate`
--

CREATE TABLE IF NOT EXISTS `help_template_boiler_plate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `help_template_id` int(11) NOT NULL,
  `help_boiler_plate_id` int(11) NOT NULL,
  `position` enum('Top','Bottom') DEFAULT NULL,
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
  `title` text NOT NULL,
  `description` text,
  `prefix` text NOT NULL,
  `level` int(11) DEFAULT '1',
  `help_template_id` int(11) NOT NULL,
  `note` text,
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
-- Table structure for table `help__model__help_document_index`
--

CREATE TABLE IF NOT EXISTS `help__model__help_document_index` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `field` varchar(50) NOT NULL DEFAULT '',
  `position` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`keyword`,`field`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help__model__help_document_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `help__model__help_document_version`
--

CREATE TABLE IF NOT EXISTS `help__model__help_document_version` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `title` text,
  `description` text,
  `keyword` text,
  `content` longtext,
  `answer` text,
  `related_item` text,
  `question` text,
  `module` int(11) DEFAULT NULL,
  `help_type_id` int(11) NOT NULL,
  `help_category_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `admin_group_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help__model__help_document_version`
--


-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE IF NOT EXISTS `inquiry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `salutation_id` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
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
  `is_visible` tinyint(4) DEFAULT '1',
  `is_label` tinyint(4) NOT NULL DEFAULT '0',
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
  UNIQUE KEY `sluggable_idx` (`slug`),
  KEY `page_id_idx` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `description`, `label`, `module`, `controller`, `sequence`, `action`, `image_file`, `is_visible`, `is_label`, `page_id`, `created_at`, `updated_at`, `root_id`, `lft`, `rgt`, `level`, `slug`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 'Top', 'Top menus', 'Top Menu', 'storefront', 'index', 0, 'index', '1', 1, 0, NULL, '2010-02-06 19:34:58', '2010-06-22 23:14:11', 1, 1, 10, 0, NULL, NULL, 1),
(2, 'Main', 'Main menus', 'Rhema Webdesign', 'storefront', 'index', 0, 'index', '1', 1, 0, NULL, '2010-02-06 19:34:58', '2010-06-29 00:42:50', 2, 1, 34, 0, NULL, NULL, 1),
(3, 'Bottom', 'Bottom menus', 'Bottom Menu', 'storefront', 'index', 0, 'index', '1', 1, 0, NULL, '2010-02-06 19:34:58', '2010-06-22 23:22:27', 3, 1, 11, 0, NULL, NULL, 1),
(4, 'Account', 'Account menus', 'Account Menu', 'storefront', 'index', 0, 'index', '1', 1, 0, NULL, '2010-02-06 19:34:58', '2010-06-19 22:21:49', 4, 1, 10, 0, NULL, NULL, 1),
(5, 'Services', 'Side menus', 'Our Services', 'storefront', 'index', 1, 'index', '1', 1, 1, 1, '2010-02-06 19:34:58', '2010-06-28 12:21:50', 5, 1, 15, 0, 'our-services', NULL, 1),
(6, 'Home', 'Rhema webdesign home page', 'Home', 'storefront', 'index', 1, 'index', '1', 1, 0, 1, '2010-02-06 19:42:29', '2010-06-16 06:15:47', 2, 2, 3, 1, 'home', NULL, 1),
(7, 'About Us', '', 'About Us', 'storefront', 'index', 1, 'about-us', '1', 1, 0, 5, '2010-02-06 19:42:36', '2010-06-22 23:03:27', 2, 4, 5, 1, 'about-us', NULL, 1),
(8, 'Modules', 'Website portfolio', 'Modules', 'storefront', 'index', 1, 'portfolio', '1', 1, 0, 13, '2010-02-06 19:43:12', '2010-06-28 10:24:46', 2, 13, 14, 2, 'modules', NULL, 1),
(9, 'Contact Us', '', 'Contact Us', 'storefront', 'index', 1, 'contact-us', '1', 1, 0, 4, '2010-02-06 19:43:20', '2010-06-29 00:42:50', 2, 32, 33, 1, 'contact-us', NULL, 1),
(10, 'Blog', 'Blog Posts and Comments', 'Blog', 'storefront', 'index', 1, 'blog', '1', 1, 0, 20, '2010-02-06 19:43:28', '2010-07-24 18:38:50', 1, 4, 5, 1, 'blog', NULL, 1),
(11, 'Home', 'Home page', 'Home', 'storefront', 'index', 1, 'index', '1', 1, 0, 1, '2010-02-06 19:43:47', '2010-06-13 09:02:46', 3, 2, 3, 1, NULL, NULL, 1),
(12, 'Terms', '', 'Terms', 'storefront', 'index', 1, 'terms-and-conditions', '1', 1, 0, 11, '2010-02-06 19:43:53', '2010-06-22 23:24:15', 3, 4, 5, 1, NULL, NULL, 1),
(13, 'Policy', '', 'Policy', 'storefront', 'index', 2, 'privacy-policy', '1', 1, 0, 10, '2010-02-06 19:43:59', '2010-06-22 23:22:52', 3, 6, 7, 1, NULL, NULL, 1),
(14, 'E-commerce', '', 'eCommerce', 'storefront', 'index', 3, 'ecommerce', '1', 1, 0, 16, '2010-02-06 19:44:06', '2010-06-28 12:05:54', 5, 2, 3, 1, 'e-commerce', NULL, 1),
(15, 'Contact Us', '', 'Contact Us', 'storefront', 'index', 1, 'contact-us', '1', 1, 0, 4, '2010-02-06 19:44:16', '2010-06-22 23:23:01', 3, 7, 10, 1, NULL, NULL, 1),
(16, 'My Details', NULL, 'My Details', NULL, '', NULL, NULL, '1', 1, 0, NULL, '2010-02-06 19:44:32', '2010-06-19 22:21:49', 4, 3, 10, 1, NULL, NULL, 1),
(17, 'Control Panel', '', 'Control Panel', 'cms', 'index', 1, 'index', '1', 1, 0, 0, '2010-02-06 19:44:45', '2010-06-19 22:21:49', 4, 10, 12, 1, 'control-panel', NULL, 1),
(18, 'Sitemap', '', 'Sitemap', 'storefront', 'index', 2, 'sitemap', '1', 1, 0, 11, '2010-02-15 23:24:13', '2010-06-22 23:22:27', 3, 8, 8, 1, 'sitemap', NULL, 1),
(19, 'Web Design and Development', '', 'Web Development', 'storefront', 'index', 2, 'web-design-development', '1', 1, 0, 7, '2010-02-15 23:29:46', '2010-06-27 18:12:52', 5, 8, 8, 1, 'web-design', NULL, 1),
(20, 'My Account', '', 'My Account', 'storefront', 'index', 1, 'my-account', '1', 0, 1, 3, '2010-02-16 00:22:12', '2010-07-05 21:51:46', 2, 18, 19, 1, 'my-account', NULL, 1),
(21, 'Order History', '', 'Order History', 'storefront', 'index', 0, '', '1', 1, 0, 7, '2010-03-08 07:49:26', '2010-06-19 22:14:04', 4, 1, 1, 1, 'order-history', NULL, 1),
(22, 'FAQs', '', 'Frequently-asked-questions', 'storefront', 'index', 0, '', '1', 1, 0, 7, '2010-03-08 07:51:57', '2010-05-10 22:39:04', NULL, NULL, NULL, 0, 'frequently-asked-questions', NULL, 1),
(23, 'FAQ', '', 'FAQ', 'storefront', 'index', 1, '', '1', 1, 0, 1, '2010-03-08 07:56:11', '2010-06-19 22:30:10', 1, 2, 3, 1, 'faq', NULL, 1),
(24, 'Products', '', 'Products', 'storefront', 'index', 3, 'comments-and-reviews', '1', 1, 0, 14, '2010-03-18 23:43:05', '2010-06-24 00:02:48', 4, 12, 12, 1, 'products', NULL, 1),
(25, 'Branch Search', '', 'Branch  Search', 'storefront', 'index', 0, '', '1', 1, 0, 15, '2010-03-20 06:14:11', '2010-05-13 22:48:47', NULL, NULL, NULL, 0, 'category-search', NULL, 1),
(26, 'Address Book', NULL, 'Address Book', NULL, '', NULL, NULL, '1', 1, 0, NULL, '2010-05-10 21:31:43', '2010-06-19 22:19:53', 4, 4, 4, 1, 'address-book', NULL, 1),
(27, 'Shopping Cart', '', 'Shopping Cart', 'storefront', 'index', 0, '', '1', 1, 0, 14, '2010-05-11 18:25:07', '2010-06-19 22:19:53', 4, 2, 3, 1, 'shopping-cart', NULL, 1),
(29, 'Search Results', '', ' Search Results', 'storefront', 'index', 1, 'search', '0', 1, 0, 14, '2010-05-13 21:08:11', '2010-06-23 22:36:27', 4, 2, 3, 1, 'search', NULL, 1),
(30, 'Branch Search', '', 'Branch', 'storefront', 'index', 0, '', '1', 1, 0, 15, '2010-05-13 22:21:02', '2010-05-13 22:21:02', NULL, NULL, NULL, 1, 'branch', NULL, 1),
(31, 'Product Detail', '', 'Product Detail', 'storefront', 'index', 0, '', '0', 1, 0, 13, '2010-05-13 22:47:18', '2010-06-19 22:21:49', 4, 4, 9, 1, 'new-folder-2', NULL, 1),
(32, 'Logout', '', 'Logout', 'storefront', 'index', 3, 'logout', '1', 1, 0, 1, '2010-05-22 15:27:00', '2010-07-06 01:43:40', 1, 8, 9, 1, 'logout', NULL, 1),
(33, 'Login', '', 'Login', 'storefront', 'index', 5, 'login', '1', 1, 0, 2, '2010-05-22 15:30:49', '2010-06-22 23:14:11', 1, 6, 7, 1, 'login', NULL, 1),
(34, 'Shopping', '', 'Shopping', 'ecom', 'cart', 1, 'shopping-cart', '1', 0, 0, 1, '2010-05-24 20:02:40', '2010-06-29 00:43:13', 2, 22, 31, 1, 'shopping', NULL, 1),
(35, 'Add', '', 'Add', 'ecom', 'cart', 0, '', '1', 1, 0, 0, '2010-05-24 20:02:58', '2010-06-29 00:42:50', 2, 23, 24, 2, 'add', NULL, 1),
(36, 'View', '', 'View', 'ecom', 'cart', 0, '', '1', 1, 0, 0, '2010-05-24 20:03:05', '2010-06-29 00:42:50', 2, 25, 26, 2, 'view', NULL, 1),
(37, 'Delete', '', 'Delete', 'ecom', 'cart', 0, '', '1', 1, 0, 0, '2010-05-24 20:03:12', '2010-06-29 00:42:50', 2, 27, 28, 2, 'delete', NULL, 1),
(38, 'Page Not Found', '', 'Page Not Found', 'storefront', 'index', 1, 'page-not-found', '1', 0, 0, 19, '2010-05-24 20:08:44', '2010-06-29 00:57:36', 2, 20, 21, 1, 'page-not-found', NULL, 1),
(39, 'Update', '', 'Update', 'ecom', 'cart', 0, '', '1', 1, 0, 0, '2010-05-24 20:11:25', '2010-06-29 00:42:50', 2, 29, 30, 2, 'update', NULL, 1),
(40, 'Content Management Systems', '', 'Content Management', 'storefront', 'index', 2, 'content-management-system', '1', 1, 0, 18, '2010-05-31 13:03:57', '2010-07-11 18:39:47', 5, 4, 5, 1, 'content-management-systems', NULL, 1),
(41, 'Web Hosting', '', 'Web Hosting', 'storefront', 'index', 2, 'web-hosting', '1', 1, 0, 6, '2010-05-31 13:09:57', '2010-06-27 17:01:55', 5, 16, 17, 1, 'web-hosting', NULL, 1),
(42, 'Support and Maintenance', '', 'Help & Support', 'storefront', 'index', 1, 'help-support-maintenance', '1', 1, 0, 8, '2010-05-31 13:10:38', '2010-06-28 12:37:40', 5, 17, 10, 1, 'support-and-maintenance', NULL, 1),
(43, 'Portfolio', 'Displays websites designed using Rhema Webdes', 'Portfolio', 'storefront', 'index', 2, 'webdesign-portfolio', '', 0, 0, 13, '2010-06-22 23:12:46', '2010-07-05 21:53:08', 2, 6, 7, 1, 'portfolio-1', NULL, 1),
(44, 'RhemaSys', '', 'RhemaSys', 'storefront', 'index', 2, 'rhema-management-system', '', 0, 0, 1, '2010-06-22 23:12:54', '2010-06-28 17:43:47', 2, 8, 17, 1, 'rhemasys', NULL, 1),
(45, 'Main Features', '', 'Main Features', '', '', 0, '', '', 1, 0, 1, '2010-06-23 07:41:23', '2010-06-28 10:25:27', 2, 11, 12, 2, 'main-features', NULL, 1),
(46, 'Introduction', NULL, 'Introduction', NULL, '', NULL, '', NULL, 1, 0, NULL, '2010-06-23 07:41:48', '2010-06-23 07:42:25', 2, 9, 10, 2, 'introduction', NULL, 1),
(47, 'Site Search', '', 'Content Search', 'storefront', 'index', 2, 'site-search', '', 0, 0, 15, '2010-06-23 22:35:01', '2010-06-24 00:02:35', 4, 13, 14, 1, 'content-search', NULL, 1),
(48, 'Search Engine Optimisation', '', 'Search Engine Optimisation', 'storefront', 'index', 2, 'search-engine-optimisation', '/golive/userfiles/graphics/statistics.png', 1, 0, 17, '2010-06-25 12:43:34', '2010-06-29 00:18:52', 5, 6, 7, 1, 'search-engine-optimisation', NULL, 1),
(49, 'Bespoke Websites', '', 'Bespoke Websites', 'storefront', 'index', 1, 'bespoke-websites', '', 1, 0, 9, '2010-06-25 12:59:01', '2010-06-28 11:14:15', 5, 14, 15, 1, 'bespoke-websites', NULL, 1),
(50, 'Demo', NULL, 'Demo', NULL, '', NULL, '', NULL, 1, 0, NULL, '2010-06-28 10:24:53', '2010-06-28 10:24:59', 2, 15, 16, 2, 'demo', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
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
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `sluggable_idx` (`slug`),
  KEY `category_id_idx` (`category_id`),
  KEY `page_header_id_idx` (`page_header_id`),
  KEY `page_body_id_idx` (`template_id`),
  KEY `page_footer_id_idx` (`page_footer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `description`, `category_id`, `is_active`, `keyword`, `start_at`, `end_at`, `is_hidden`, `is_cached`, `is_secure`, `template_id`, `page_header_id`, `page_footer_id`, `note`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `admin_subsite_id`, `slug`) VALUES
(1, 'Home page', '', 1, 1, '', '2010-06-13 22:41:50', '2010-06-13 22:41:50', 0, 0, 0, 4, 1, 2, '', '2010-06-13 22:42:35', '2010-07-03 20:01:10', 1, 1, NULL, 1, ''),
(2, 'Login', '', 1, 1, '', '2010-06-16 20:29:06', '2010-06-16 20:29:06', 0, 0, 0, 1, 1, 1, '', '2010-06-16 20:31:23', '2010-06-19 21:26:44', 1, 1, NULL, 1, '1'),
(3, 'My Account', '', 1, 0, '', '2010-06-16 22:00:07', '2010-06-16 22:00:07', 0, 0, 0, 1, 1, 1, '', '2010-06-16 22:00:45', '2010-06-16 22:00:45', 1, 1, NULL, 1, '2'),
(4, 'Contact Us', '', 1, 0, '', '2010-06-16 22:00:07', '2010-06-16 22:00:07', 0, 0, 0, 1, 1, 1, '', '2010-06-16 22:01:09', '2010-06-16 22:01:09', 1, 1, NULL, 1, '3'),
(5, 'About Us', 'Rhema Webdesign specialises in high value web design, content management and ecommerce solutions to meet your specific business needs.', 1, 1, 'web design, content management,  ecommerce, web development, search engine optimisation, low cost websites, coventry, west midlands', '2010-06-22 22:52:45', '2010-06-22 22:52:45', 0, 0, 0, 1, 1, 1, '', '2010-06-22 22:53:26', '2010-06-28 08:21:41', 1, 1, NULL, 1, '4'),
(6, 'Web Hosting Service', '', 1, 0, '', '2010-06-22 22:52:45', '2010-06-22 22:52:45', 0, 0, 0, 1, 1, 1, '', '2010-06-22 22:55:40', '2010-06-22 22:55:40', 1, 1, NULL, 1, '5'),
(7, 'Web Design and Development', '', 1, 0, '', '2010-06-22 22:52:45', '2010-06-22 22:52:45', 0, 0, 0, 1, 1, 1, '', '2010-06-22 22:56:08', '2010-06-22 22:56:08', 1, 1, NULL, 1, '6'),
(8, 'Online Help, Support and Maintenance', '', 1, 0, '', '2010-06-22 22:52:45', '2010-06-22 22:52:45', 0, 0, 0, 1, 1, 1, '', '2010-06-22 22:56:47', '2010-06-22 22:56:47', 1, 1, NULL, 1, '7'),
(9, 'Bespoke Websites', '', 1, 0, '', '2010-06-22 22:52:45', '2010-06-22 22:52:45', 0, 0, 0, 1, 1, 1, '', '2010-06-22 22:57:09', '2010-06-22 22:57:09', 1, 1, NULL, 1, '8'),
(10, 'Privacy Policy', '', 1, 0, '', '2010-06-22 22:52:45', '2010-06-22 22:52:45', 0, 0, 0, 1, 1, 1, '', '2010-06-22 22:57:29', '2010-06-22 22:57:29', 1, 1, NULL, 1, '9'),
(11, 'Terms and Conditions', '', 1, 0, '', '2010-06-22 22:52:45', '2010-06-22 22:52:45', 0, 0, 0, 1, 1, 1, '', '2010-06-22 22:57:52', '2010-06-22 22:57:52', 1, 1, NULL, 1, '10'),
(12, 'Rhema Management System', '', 1, 0, '', '2010-06-22 23:04:39', '2010-06-22 23:04:39', 0, 0, 0, 1, 1, 1, '', '2010-06-22 23:19:28', '2010-06-22 23:19:28', 1, 1, NULL, 1, '11'),
(13, 'Portfolio', '', 1, 0, '', '2010-06-23 07:44:48', '2010-06-23 07:44:48', 0, 0, 0, 1, 1, 1, '', '2010-06-23 07:45:20', '2010-06-23 07:45:20', 1, 1, NULL, 1, '12'),
(14, 'Product Search', '', 1, 0, '', '2010-06-23 21:33:22', '2010-06-23 21:33:22', 0, 0, 0, 1, 1, 1, '', '2010-06-23 22:31:29', '2010-06-23 22:33:19', 1, 1, NULL, 1, '13'),
(15, 'Site Search', '', 1, 0, '', '2010-06-23 21:33:22', '2010-06-23 21:33:22', 0, 0, 0, 1, 1, 1, '', '2010-06-23 22:33:03', '2010-06-23 22:33:03', 1, 1, NULL, 1, '14'),
(16, 'eCommerce', '', 1, 1, '', '2010-06-25 11:21:09', '2010-06-25 11:21:09', 0, 0, 0, 1, 1, 1, '', '2010-06-25 11:23:45', '2010-06-25 11:24:03', 1, 1, NULL, 1, '15'),
(17, 'Search Engine Optimisation', '', 1, 0, '', '2010-06-25 11:21:09', '2010-06-25 11:21:09', 0, 0, 0, 1, 1, 1, '', '2010-06-25 11:26:43', '2010-06-25 11:26:43', 1, 1, NULL, 1, '16'),
(18, 'Content Management Systems', '', 1, 1, 'content management, CMS, rhemasys', '2010-06-28 12:17:54', '2010-06-28 12:17:54', 0, 0, 0, 1, 1, 1, '', '2010-06-28 12:25:41', '2010-06-28 12:25:41', 1, 1, NULL, 1, '17'),
(19, '404', '', 1, 0, '', '2010-06-29 00:43:50', '2010-06-29 00:43:50', 0, 0, 0, 1, 1, 1, '', '2010-06-29 00:44:45', '2010-06-29 00:44:45', 1, 1, NULL, 1, '18'),
(20, 'Blog', '', 1, 0, '', '2010-07-24 18:23:40', '2010-07-24 18:23:40', 0, 0, 0, 6, 1, 2, '', '2010-07-24 18:26:20', '2010-07-24 18:26:20', 1, 1, NULL, 1, '19');

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
  KEY `admin_template_id_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page_footer`
--

INSERT INTO `page_footer` (`id`, `title`, `template_id`, `description`, `category_id`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 'Default footer', 3, '', 1, 1, '2010-06-13 22:41:34', '2010-06-30 20:09:32', 1, 1, NULL, 1),
(2, 'Home footer', 5, '', 1, 0, '2010-06-27 22:53:17', '2010-06-27 22:53:17', 1, 1, NULL, 1);

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
  KEY `admin_template_id_idx` (`template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page_header`
--

INSERT INTO `page_header` (`id`, `title`, `template_id`, `description`, `category_id`, `is_active`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 'Default header', 2, '', 1, 1, '2010-06-13 22:40:49', '2010-06-28 11:26:22', 1, 1, NULL, 1),
(2, 'Home page', 4, '', 1, 1, '2010-06-27 22:55:14', '2010-06-27 22:55:14', 1, 1, NULL, 1);

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
  KEY `admin_template_id_idx` (`template_id`),
  KEY `page_id_idx` (`page_id`),
  KEY `admin_content_type_id_idx` (`admin_content_type_id`),
  KEY `admin_section_id_idx` (`admin_section_id`),
  KEY `admin_table_id_idx` (`admin_table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `page_layout`
--

INSERT INTO `page_layout` (`id`, `item`, `admin_content_type_id`, `page_id`, `admin_table_id`, `admin_section_id`, `template_id`, `section_seq`, `item_seq`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '3', 2, 34, 21, 1, 2, 0, '2010-06-27 22:24:40', '2010-06-27 22:24:40', NULL),
(2, 4, '1', 2, 34, 21, 1, 2, 1, '2010-06-27 22:24:40', '2010-09-11 20:58:39', '2010-09-11 20:58:39'),
(3, 1, '4', 1, 16, 16, 2, 0, 0, '2010-06-27 22:28:22', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(4, 2, '4', 1, 16, 4, 2, 1, 0, '2010-06-27 22:28:22', '2010-07-11 17:06:40', NULL),
(5, 7, '2', 1, 16, 1, 2, 3, 0, '2010-06-27 22:28:22', '2010-07-11 17:06:40', NULL),
(6, 17, '1', 1, 16, 3, 2, 2, 0, '2010-06-27 22:29:28', '2010-06-27 22:29:28', NULL),
(7, 1, '4', 1, 16, 22, 2, 0, 0, '2010-06-27 22:32:42', '2010-07-11 17:06:40', NULL),
(8, 5, '4', 5, 34, 20, 1, 1, 0, '2010-06-27 22:36:16', '2010-06-27 22:36:16', NULL),
(9, 2, '3', 5, 34, 21, 1, 2, 0, '2010-06-27 22:36:16', '2010-06-27 22:36:16', NULL),
(10, 1, '2', 5, 34, 21, 1, 2, 1, '2010-06-27 22:36:16', '2010-06-27 22:36:16', NULL),
(11, 15, '1', 1, 61, 19, 3, 2, 0, '2010-06-27 22:39:11', '2010-07-11 19:38:24', NULL),
(12, 3, '4', 1, 61, 23, 3, 2, 0, '2010-06-27 22:39:11', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(13, 5, '1', 1, 61, 17, 3, 0, 0, '2010-06-27 22:40:56', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(14, 7, '1', 1, 61, 18, 3, 1, 0, '2010-06-27 22:40:56', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(15, 3, '4', 2, 61, 23, 5, 2, 0, '2010-06-27 22:54:15', '2010-06-27 23:05:00', NULL),
(16, 15, '1', 1, 34, 25, 4, 0, 0, '2010-06-27 23:01:27', '2010-06-27 23:01:27', NULL),
(17, 2, '3', 1, 34, 8, 4, 1, 0, '2010-06-27 23:01:27', '2010-07-11 17:22:30', '2010-07-11 17:22:30'),
(18, 6, '2', 1, 34, 8, 4, 1, 0, '2010-06-27 23:01:27', '2010-07-11 17:22:30', '2010-07-11 17:22:30'),
(19, 5, '4', 1, 34, 9, 4, 2, 0, '2010-06-27 23:01:27', '2010-07-11 17:22:30', '2010-07-11 17:22:30'),
(20, 5, '1', 2, 61, 17, 5, 0, 0, '2010-06-27 23:05:00', '2010-06-27 23:05:00', NULL),
(21, 7, '1', 2, 61, 18, 5, 1, 0, '2010-06-27 23:05:00', '2010-06-27 23:05:00', NULL),
(22, 16, '1', 1, 16, 22, 2, 0, 1, '2010-06-28 11:17:56', '2010-07-11 17:06:40', NULL),
(23, 5, '4', 16, 34, 20, 1, 1, 0, '2010-06-28 11:31:07', '2010-06-28 11:31:07', NULL),
(24, 2, '3', 16, 34, 21, 1, 2, 0, '2010-06-28 11:31:07', '2010-06-28 22:36:38', '2010-06-28 22:36:38'),
(25, 11, '2', 16, 34, 21, 1, 2, 1, '2010-06-28 11:31:07', '2010-06-28 22:36:38', '2010-06-28 22:36:38'),
(26, 5, '4', 6, 34, 20, 1, 1, 0, '2010-06-28 11:32:50', '2010-06-28 11:32:50', NULL),
(27, 5, '3', 6, 34, 21, 1, 2, 0, '2010-06-28 11:32:50', '2010-06-28 11:32:50', NULL),
(28, 13, '2', 6, 34, 21, 1, 2, 1, '2010-06-28 11:32:50', '2010-06-28 11:32:50', NULL),
(29, 5, '4', 7, 34, 20, 1, 1, 0, '2010-06-28 11:33:15', '2010-06-28 11:33:15', NULL),
(30, 5, '3', 7, 34, 21, 1, 2, 0, '2010-06-28 11:33:15', '2010-06-28 11:33:15', NULL),
(31, 15, '2', 7, 34, 21, 1, 2, 1, '2010-06-28 11:33:15', '2010-06-28 11:33:15', NULL),
(32, 5, '4', 17, 34, 20, 1, 1, 0, '2010-06-28 11:33:42', '2010-06-28 11:33:42', NULL),
(33, 5, '3', 17, 34, 21, 1, 2, 0, '2010-06-28 11:33:42', '2010-06-28 11:33:42', NULL),
(34, 11, '2', 17, 34, 21, 1, 2, 1, '2010-06-28 11:33:42', '2010-06-28 11:33:42', NULL),
(35, 5, '4', 12, 34, 20, 1, 1, 0, '2010-06-28 11:34:14', '2010-07-11 17:03:37', '2010-07-11 17:03:37'),
(36, 5, '3', 12, 34, 21, 1, 2, 0, '2010-06-28 11:34:14', '2010-06-28 11:34:14', NULL),
(37, 10, '2', 12, 34, 21, 1, 2, 1, '2010-06-28 11:34:14', '2010-06-28 11:34:14', NULL),
(38, 5, '4', 10, 34, 20, 1, 1, 0, '2010-06-28 11:34:41', '2010-06-28 11:34:41', NULL),
(39, 2, '3', 10, 34, 21, 1, 2, 0, '2010-06-28 11:34:42', '2010-06-28 11:34:42', NULL),
(40, 9, '2', 10, 34, 21, 1, 2, 1, '2010-06-28 11:34:42', '2010-06-28 11:34:42', NULL),
(41, 4, '4', 3, 34, 20, 1, 1, 0, '2010-06-28 11:35:19', '2010-06-28 11:35:19', NULL),
(42, 2, '3', 3, 34, 21, 1, 2, 0, '2010-06-28 11:35:19', '2010-06-28 11:35:19', NULL),
(43, 5, '4', 9, 34, 20, 1, 1, 0, '2010-06-28 11:37:29', '2010-06-28 11:37:29', NULL),
(44, 5, '3', 9, 34, 21, 1, 2, 0, '2010-06-28 11:37:29', '2010-06-28 11:37:29', NULL),
(45, 2, '2', 9, 34, 21, 1, 2, 1, '2010-06-28 11:37:29', '2010-06-28 11:37:29', NULL),
(46, 5, '4', 4, 34, 20, 1, 1, 0, '2010-06-28 11:38:12', '2010-06-28 11:38:12', NULL),
(47, 2, '3', 4, 34, 21, 1, 2, 0, '2010-06-28 11:38:12', '2010-06-28 11:38:12', NULL),
(48, 5, '2', 16, 34, 21, 1, 2, 1, '2010-06-28 11:38:59', '2010-06-28 11:38:59', NULL),
(49, 5, '3', 16, 34, 21, 1, 2, 0, '2010-06-28 12:18:36', '2010-06-28 12:18:36', NULL),
(50, 5, '4', 18, 34, 20, 1, 1, 0, '2010-06-28 12:34:45', '2010-07-11 18:37:14', NULL),
(51, 5, '3', 18, 34, 21, 1, 2, 0, '2010-06-28 12:34:45', '2010-07-11 17:40:09', NULL),
(52, 4, '2', 18, 34, 21, 1, 2, 1, '2010-06-28 12:34:45', '2010-07-11 18:43:56', '2010-07-11 18:43:56'),
(53, 5, '4', 8, 34, 20, 1, 1, 0, '2010-06-28 12:36:41', '2010-06-28 12:36:41', NULL),
(54, 5, '3', 8, 34, 21, 1, 2, 0, '2010-06-28 12:36:41', '2010-06-28 12:36:41', NULL),
(55, 5, '4', 19, 34, 20, 1, 1, 0, '2010-06-29 00:58:40', '2010-06-29 00:58:40', NULL),
(56, 2, '3', 19, 34, 21, 1, 2, 0, '2010-06-29 00:58:40', '2010-06-29 00:58:40', NULL),
(57, 3, '4', 1, 61, 19, 3, 2, 0, '2010-06-30 20:12:07', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(58, 14, '1', 1, 34, 25, 1, 0, 0, '2010-07-03 19:52:14', '2010-07-03 20:00:05', '2010-07-03 20:00:04'),
(59, 5, '4', 1, 34, 20, 1, 1, 0, '2010-07-03 19:52:14', '2010-07-03 19:52:14', NULL),
(60, 2, '3', 1, 34, 21, 1, 2, 0, '2010-07-03 19:52:14', '2010-07-03 19:52:14', NULL),
(61, 6, '2', 1, 34, 21, 1, 2, 1, '2010-07-03 19:52:14', '2010-07-03 19:52:14', NULL),
(62, 15, '1', 1, 34, 25, 1, 0, 0, '2010-07-03 19:57:34', '2010-07-03 20:00:05', '2010-07-03 20:00:04'),
(63, 15, '1', 1, 34, 19, 1, 0, 0, '2010-07-03 20:00:05', '2010-07-03 20:00:05', NULL),
(64, 5, '4', 1, 34, 20, 4, 1, 0, '2010-07-03 20:04:10', '2010-07-03 20:04:10', NULL),
(65, 6, '2', 1, 34, 21, 4, 2, 1, '2010-07-03 20:04:10', '2010-07-03 20:05:39', NULL),
(66, 2, '3', 1, 34, 21, 4, 2, 0, '2010-07-03 20:05:39', '2010-07-03 20:05:39', NULL),
(67, 6, '1', 1, 16, 1, 2, 3, 1, '2010-07-04 11:07:32', '2010-07-15 23:49:17', NULL),
(68, 1, '8', 4, 34, 21, 1, 2, 1, '2010-07-10 21:21:43', '2010-07-10 21:21:43', NULL),
(69, 1, '4', 1, 16, 4, 2, 1, 0, '2010-07-11 16:34:04', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(70, 16, '1', 1, 16, 4, 2, 1, 1, '2010-07-11 16:34:21', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(71, 1, '4', 1, 16, 3, 2, 2, 1, '2010-07-11 16:34:21', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(72, 2, '4', 1, 16, 3, 2, 2, 0, '2010-07-11 16:34:21', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(73, 16, '1', 1, 16, 3, 2, 2, 2, '2010-07-11 16:34:21', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(74, 1, '4', 1, 16, 1, 2, 3, 0, '2010-07-11 16:34:22', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(75, 2, '4', 1, 16, 1, 2, 3, 0, '2010-07-11 16:34:22', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(76, 16, '1', 1, 16, 1, 2, 3, 1, '2010-07-11 16:34:22', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(77, 17, '1', 1, 16, 1, 2, 3, 0, '2010-07-11 16:34:22', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(78, 6, '1', 1, 16, 4, 2, 1, 1, '2010-07-11 17:00:55', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(79, 7, '2', 1, 16, 3, 2, 2, 0, '2010-07-11 17:03:37', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(80, 6, '1', 1, 16, 3, 2, 2, 1, '2010-07-11 17:03:37', '2010-07-15 23:49:17', '2010-07-15 23:49:17'),
(81, 7, '2', 12, 34, 21, 1, 2, 0, '2010-07-11 17:03:37', '2010-07-11 17:03:37', '2010-07-11 17:57:03'),
(82, 1, '4', 12, 34, 21, 1, 2, 1, '2010-07-11 17:03:37', '2010-07-11 17:03:37', '2010-07-11 18:03:32'),
(83, 2, '4', 12, 34, 21, 1, 2, 0, '2010-07-11 17:03:37', '2010-07-11 17:03:37', '2010-07-11 18:11:45'),
(84, 5, '4', 12, 34, 21, 1, 2, 0, '2010-07-11 17:03:37', '2010-07-11 17:03:37', '2010-07-11 18:01:22'),
(85, 16, '1', 12, 34, 21, 1, 2, 2, '2010-07-11 17:03:37', '2010-07-11 17:03:37', '2010-07-11 18:05:06'),
(86, 6, '1', 12, 34, 21, 1, 2, 1, '2010-07-11 17:03:37', '2010-07-11 17:03:37', '2010-07-11 18:11:14'),
(87, 17, '1', 12, 34, 21, 1, 2, 0, '2010-07-11 17:03:37', '2010-07-11 17:03:37', '2010-07-11 18:11:49'),
(88, 7, '2', 1, 61, 18, 3, 1, 0, '2010-07-11 17:03:37', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(89, 10, '2', 1, 61, 18, 3, 1, 1, '2010-07-11 17:03:37', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(90, 1, '4', 1, 61, 18, 3, 1, 1, '2010-07-11 17:03:37', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(91, 2, '4', 1, 61, 18, 3, 1, 0, '2010-07-11 17:03:37', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(92, 5, '4', 1, 61, 18, 3, 1, 0, '2010-07-11 17:03:37', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(93, 16, '1', 1, 61, 18, 3, 1, 2, '2010-07-11 17:03:37', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(94, 6, '1', 1, 61, 18, 3, 1, 1, '2010-07-11 17:03:37', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(95, 17, '1', 1, 61, 18, 3, 1, 0, '2010-07-11 17:03:37', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(96, 5, '1', 1, 61, 18, 3, 1, 0, '2010-07-11 17:03:38', '2010-07-11 17:03:38', NULL),
(97, 5, '3', 1, 61, 18, 3, 1, 0, '2010-07-11 17:03:38', '2010-07-11 19:38:24', '2010-07-11 19:38:23'),
(98, 10, '2', 18, 34, 21, 1, 2, 1, '2010-07-11 18:43:56', '2010-07-11 18:43:56', NULL),
(99, 7, '1', 1, 61, 17, 3, 0, 0, '2010-07-11 19:38:24', '2010-07-11 19:38:24', NULL),
(100, 18, '1', 20, 34, 13, 6, 0, 0, '2010-07-24 19:44:53', '2010-07-24 19:44:53', NULL),
(101, 20, '1', 20, 34, 14, 6, 1, 0, '2010-07-24 19:57:40', '2010-07-24 19:57:40', NULL),
(102, 19, '1', 20, 34, 15, 6, 2, 0, '2010-07-24 19:57:40', '2010-07-24 19:57:40', NULL),
(103, 2, '8', 2, 34, 21, 1, 2, 1, '2010-09-11 20:47:28', '2010-09-11 20:58:39', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `title`, `description`, `sequence`, `is_admin`, `created_at`, `updated_at`, `admin_subsite_id`, `created_by`, `updated_by`) VALUES
(1, 'Guest', 'Unregistered user and  users that are not logged in are regarded as guests.', 1, 0, '2010-04-30 19:02:39', '2010-04-30 19:02:39', 1, 0, 0),
(2, 'Member', 'Registered users with an online account.', 2, 0, '2010-04-30 19:04:10', '2010-04-30 19:04:10', 1, 0, 0),
(3, 'Admininstrator', 'Admin', 3, 0, '2010-04-30 19:04:54', '2010-04-30 19:04:54', 1, 0, 0),
(4, 'Super', 'Access to all menus and modules', 10, 0, '2010-04-30 19:05:25', '2010-04-30 19:05:25', 1, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `salutation`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `subject`
--


-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `is_header` tinyint(4) DEFAULT NULL,
  `is_footer` tinyint(4) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id_idx` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `title`, `description`, `is_header`, `is_footer`, `image_file`, `thumb`, `category_id`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'Default', NULL, NULL, NULL, NULL, NULL, 1, '2010-06-21 21:36:34', '2010-06-27 21:36:41', 1),
(2, 'header', NULL, 1, NULL, NULL, NULL, 1, '2010-06-01 21:38:06', '2010-06-26 21:38:16', 1),
(3, 'Footer', '', 0, 1, '', '', 1, '2010-06-03 21:38:32', '2010-06-27 22:25:55', 1),
(4, 'Home Page', '', 0, 0, '', '', 1, '2010-06-27 22:51:18', '2010-06-27 22:51:18', 1),
(5, 'Home page footer', '', 0, 1, '', '', 1, '2010-06-27 22:51:39', '2010-06-27 22:51:39', 1),
(6, 'Blog', 'Blog template', 0, 0, '', '', 1, '2010-07-24 18:22:10', '2010-07-24 18:22:10', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `template_section`
--

INSERT INTO `template_section` (`id`, `admin_section_id`, `template_id`, `sequence`, `deleted_at`) VALUES
(1, 20, 1, 1, NULL),
(2, 21, 1, 2, NULL),
(3, 19, 1, 3, NULL),
(4, 25, 1, 0, NULL),
(5, 16, 2, 0, '2010-06-27 22:32:03'),
(6, 4, 2, 1, NULL),
(7, 1, 2, 3, NULL),
(8, 23, 3, 3, NULL),
(9, 19, 3, 2, NULL),
(10, 3, 2, 2, NULL),
(11, 22, 2, 0, NULL),
(12, 17, 3, 0, NULL),
(13, 18, 3, 1, NULL),
(14, 23, 5, 2, NULL),
(15, 8, 4, 1, '2010-07-03 20:03:26'),
(16, 9, 4, 2, '2010-07-03 20:03:26'),
(17, 25, 4, 0, NULL),
(18, 18, 5, 1, NULL),
(19, 17, 5, 0, NULL),
(20, 20, 4, 1, NULL),
(21, 21, 4, 2, NULL),
(22, 13, 6, 0, NULL),
(23, 14, 6, 1, NULL),
(24, 15, 6, 2, NULL);

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
  `is_online` tinyint(3) unsigned DEFAULT NULL,
  `visits` int(10) unsigned DEFAULT NULL,
  `salutation_id` int(11) NOT NULL,
  `usergroup_id` int(10) unsigned NOT NULL,
  `admin_group_id` int(11) DEFAULT NULL,
  `admin_menu_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
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

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `dob_at`, `nickname`, `gender`, `password`, `telephone`, `fax`, `email`, `company`, `image_file`, `website`, `start_at`, `end_at`, `is_blocked`, `is_active`, `is_admin`, `is_online`, `visits`, `salutation_id`, `usergroup_id`, `admin_group_id`, `admin_menu_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`) VALUES
(1, 'Pele', 'Odiase', 'odiaseo', '1974-04-08 00:00:00', NULL, 'male', 'testing', NULL, NULL, 'pele.odiase@yahoo.co.uk', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 0, 1, 1, 1, 1, 4, '2010-02-07 00:00:00', '0000-00-00 00:00:00', NULL, 1, 1);

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
  `title` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `web_form`
--

INSERT INTO `web_form` (`id`, `title`, `label`, `description`, `pretext`, `posttext`, `widget`, `category_id`, `admin_table_id`, `created_at`, `updated_at`, `admin_subsite_id`) VALUES
(1, 'Contact Us', 'Contact', '', '', '', 'Form~contact', 1, 6, '2010-09-11 19:12:29', '2010-09-11 19:12:29', 1),
(2, 'Login Form', 'Login', '', '', '', 'Form~login', 1, 30, '2010-09-11 19:20:59', '2010-09-11 19:24:55', 1);

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

