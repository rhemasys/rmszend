-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2011 at 11:39 PM
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
  `root_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_acl`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_category`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_content_type`
--


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
  `col` int(11) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `note` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_dictionary`
--


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
  `is_label` tinyint(4) DEFAULT '0',
  `is_visible` tinyint(4) DEFAULT '1',
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

INSERT INTO `admin_menu` (`id`, `title`, `description`, `label`, `module`, `controller`, `sequence`, `action`, `image_file`, `is_label`, `is_visible`, `created_at`, `updated_at`, `root_id`, `lft`, `rgt`, `level`) VALUES
(1, 'Admin', 'Admin menus', 'Admin Menu', 'admin', 'index', 0, 'index', 'admin.png', 0, 1, '2010-01-27 01:34:06', '2010-07-05 22:55:26', 1, 1, 32, 0),
(2, 'Cms', 'Cms menus', 'Content Management', 'cms', 'index', 0, 'index', 'cms.png', 0, 1, '2010-01-27 01:34:06', '2010-07-06 21:35:06', 2, 1, 24, 0),
(3, 'Blog', 'Blog menus', 'Blog Menu', 'blog', 'index', 0, 'index', 'blog.png', 0, 1, '2010-01-27 01:34:06', '2010-07-25 16:37:40', 3, 1, 14, 0),
(4, 'eCommerce', 'eCom menus', 'eCommerce', 'ecom', 'index', 0, 'index', 'ecommerce.png', 0, 1, '2010-01-27 01:34:06', '2010-06-05 10:58:47', 4, 1, 22, 0),
(5, 'Email', 'Email menus', 'Email Menu', 'email', 'index', 0, 'index', 'email.png', 0, 1, '2010-01-27 01:34:06', '2010-01-27 01:34:06', 5, 1, 2, 0),
(6, 'Manage', '', 'Manage', 'admin', 'index', 1, '', '/golive/userfiles/NIKE-10.jpg', 0, 1, '2010-01-27 21:10:03', '2010-07-05 22:55:26', 1, 14, 23, 1),
(7, 'System', '', 'System', 'admin', 'index', 0, 'index', '', 0, 1, '2010-01-27 21:10:31', '2010-07-05 22:55:26', 1, 24, 29, 1),
(8, 'Pages', '', 'Pages', 'admin', 'index', 0, 'page', '', 0, 1, '2010-01-27 21:10:56', '2010-06-05 10:44:15', 1, 3, 4, 2),
(9, 'Design', '', 'Design', 'admin', 'index', 1, 'page', '', 0, 1, '2010-01-27 21:11:18', '2010-07-05 22:55:26', 1, 2, 13, 1),
(10, 'Tables', '', 'Tables', 'admin', 'grid', 3, 'table', '', 0, 1, '2010-01-27 21:12:12', '2010-07-05 22:55:26', 1, 17, 18, 2),
(11, 'Menus', '', 'Menus', 'admin', 'index', 1, 'siteaccess', '', 0, 1, '2010-01-27 21:12:20', '2010-07-05 22:55:26', 1, 5, 10, 2),
(12, 'Category', '', 'Category', 'blog', 'index', 6, 'category', '', 0, 1, '2010-01-27 21:14:26', '2010-07-25 12:36:15', 3, 3, 4, 2),
(13, 'Menus', '', 'Menus', 'cms', 'menu', 0, 'index', '', 0, 1, '2010-01-27 21:14:34', '2010-06-05 10:57:55', 2, 3, 8, 2),
(14, 'Pages', '', 'Pages', 'cms', 'design', 0, 'page', '', 0, 1, '2010-01-27 21:14:46', '2010-06-05 10:57:55', 2, 9, 10, 2),
(15, 'Archives', '', 'Archives', 'blog', 'index', 1, 'index', '', 0, 1, '2010-01-27 21:14:51', '2010-07-25 16:37:40', 3, 11, 12, 2),
(16, 'Help', '', 'Help', 'cms', 'admin', 0, 'help', '', 0, 1, '2010-01-27 21:15:01', '2010-07-06 21:35:06', 2, 16, 19, 1),
(17, 'Help', 'help menus', 'Help', 'help', 'index', 0, 'index', 'help.png', 0, 1, '2010-02-08 01:23:32', '2010-06-05 22:39:23', 17, 1, 12, 0),
(18, 'Design', 'Search for help information', 'Design', 'help', 'search', 0, 'index', NULL, 0, 1, '2010-02-17 22:09:30', '2010-06-05 22:39:50', 17, 2, 5, 1),
(19, 'Help', 'Knowledge center, help and documentation home', 'Help', 'admin', 'help', 0, 'index', NULL, 0, 1, '2010-02-17 22:14:05', '2010-07-05 22:55:26', 1, 30, 31, 1),
(21, 'Search', 'Perform help search', 'Search', 'admin', 'help', 0, 'search', NULL, 0, 1, '2010-02-17 22:17:07', '2010-06-05 22:39:23', 17, 6, 11, 1),
(22, 'Users', NULL, 'Users', NULL, '', 0, NULL, NULL, 0, 1, '2010-02-17 22:17:31', '2010-07-05 22:55:26', 1, 19, 22, 2),
(23, 'Licencing', '', 'Licencing', 'admin', 'index', 1, 'registry', '', 0, 1, '2010-02-17 22:17:44', '2010-07-05 22:55:26', 1, 25, 26, 2),
(25, 'Tools', 'Front end layout design tools', 'Tools', 'admin', 'layout', 1, 'tool', '', 0, 1, '2010-02-17 22:29:41', '2010-07-05 22:55:26', 1, 11, 12, 2),
(26, 'Database', 'View existing databases, schema and informati', 'Database', 'admin', 'database', 0, 'index', NULL, 0, 1, '2010-02-17 22:32:04', '2010-07-05 22:55:26', 1, 15, 16, 2),
(27, 'Layout', '', 'Layout', 'help', 'design', 0, 'index', NULL, 0, 1, '2010-02-20 08:12:39', '2010-06-05 22:39:38', 17, 3, 4, 2),
(28, 'Keyword', '', 'Keyword', 'help', 'search', 0, 'keyword', NULL, 0, 1, '2010-02-21 00:44:48', '2010-06-05 22:39:23', 17, 7, 8, 2),
(29, 'Help Types', '', 'Help Types', 'help', 'search', 0, 'index', NULL, 0, 1, '2010-02-21 00:45:04', '2010-06-05 22:39:23', 17, 9, 10, 2),
(30, 'Layout', '', 'Layout', 'admin', 'index', 3, 'menu', '', 0, 1, '2010-03-15 23:00:34', '2010-07-05 22:55:26', 1, 6, 7, 3),
(31, 'Layout', '', 'Layout', 'cms', 'menu', 1, 'frontend', '', 0, 1, '2010-03-15 23:00:44', '2010-06-05 16:06:27', 2, 4, 5, 3),
(32, 'Trees', '', 'Trees', 'ecom', 'index', 1, 'index', '', 0, 1, '2010-03-18 20:22:52', '2010-06-12 01:40:45', 4, 5, 10, 2),
(33, 'Manage', '', 'Manage', 'ecom', 'stock', 1, 'index', '', 0, 1, '2010-03-18 20:24:46', '2010-06-05 10:58:47', 4, 18, 19, 1),
(34, 'Products', '', 'Products', 'ecom', 'stock', 1, 'product', '', 0, 1, '2010-03-18 23:58:12', '2010-05-28 07:47:19', 4, 3, 4, 2),
(35, 'Category', '', 'Category', 'ecom', 'stock', 2, 'category', '', 0, 1, '2010-03-19 00:00:31', '2010-06-05 10:58:47', 4, 11, 12, 2),
(36, 'Settings', '', 'Settings', 'ecom', 'index', 1, 'setting', '', 0, 1, '2010-03-19 00:01:13', '2010-06-05 10:58:47', 4, 20, 21, 1),
(37, 'Design', '', 'Design', 'ecom', 'index', 1, 'index', NULL, 0, 1, '2010-04-05 16:26:01', '2010-06-05 10:58:47', 4, 14, 17, 1),
(38, 'Attributes', '', 'Attributes', 'ecom', 'index', 2, 'template', NULL, 0, 1, '2010-04-05 16:26:13', '2010-06-05 11:04:00', 4, 15, 16, 2),
(39, 'Access Control', '', 'Access Control', 'admin', 'index', 2, 'adminaccess', '', 0, 1, '2010-05-23 15:40:25', '2010-07-05 22:55:26', 1, 8, 9, 3),
(40, 'Access Control', '', 'Access Control', 'cms', 'menu', 1, 'siteaccess', '', 0, 1, '2010-05-23 15:40:42', '2010-06-12 01:26:53', 2, 6, 7, 3),
(41, 'Access Control', '', 'Access Control', 'ecom', 'menu', 2, 'ecomaccess', '', 0, 1, '2010-05-23 15:40:52', '2010-06-12 01:39:00', 4, 8, 9, 3),
(42, 'Design', NULL, 'Design', NULL, '', 0, NULL, NULL, 0, 1, '2010-05-23 23:06:32', '2010-07-06 21:35:06', 2, 2, 15, 1),
(43, 'Catalog', NULL, 'Catalog', NULL, '', 0, NULL, NULL, 0, 1, '2010-05-28 07:46:06', '2010-06-05 10:58:47', 4, 2, 13, 1),
(44, 'Posts', '', 'Posts', 'blog', 'index', 0, 'addpost', '', 0, 1, '2010-05-31 22:17:22', '2010-07-25 12:36:38', 3, 5, 6, 2),
(45, 'User Roles', '', 'User Roles', 'cms', 'admin', 1, 'setting', '', 0, 1, '2010-05-31 22:17:39', '2010-07-05 22:55:26', 1, 20, 21, 3),
(46, 'Layout', '', 'Layout', 'ecom', 'menu', 1, 'tree', '', 0, 1, '2010-06-05 10:58:36', '2010-06-12 01:39:19', 4, 6, 7, 3),
(47, 'System', NULL, 'System', NULL, '', 0, '', NULL, 0, 1, '2010-06-22 07:43:51', '2010-07-06 21:35:06', 2, 20, 23, 1),
(48, 'Settings', '', 'Settings', 'cms', 'admin', 1, 'setting', '', 0, 1, '2010-06-22 07:44:12', '2010-07-06 21:35:06', 2, 21, 22, 2),
(49, 'Setting Definition', '', 'Setting Definition', 'admin', 'index', 5, 'setting', '', 0, 1, '2010-06-22 07:44:38', '2010-07-05 22:55:26', 1, 27, 28, 2),
(50, 'Featured Items', '', 'Featured Items', 'cms', 'design', 2, 'feature', '', 0, 1, '2010-06-24 01:03:24', '2010-06-24 01:04:53', 2, 11, 12, 2),
(51, 'Web Forms', '', 'Web Forms', 'cms', 'design', 1, 'form', '', 0, 1, '2010-07-06 21:35:06', '2010-07-06 21:35:50', 2, 13, 14, 2),
(52, 'Design', NULL, 'Design', NULL, '', 0, '', NULL, 0, 1, '2010-07-25 11:41:27', '2010-07-25 16:37:40', 3, 2, 9, 1),
(53, 'Manage', NULL, 'Manage', NULL, '', 0, '', NULL, 0, 1, '2010-07-25 11:41:56', '2010-07-25 16:37:40', 3, 10, 13, 1),
(54, 'Comments', '', 'Comments', 'blog', 'index', 1, 'comment', '', 0, 1, '2010-07-25 16:37:39', '2010-07-25 20:37:05', 3, 7, 8, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin_module`
--

INSERT INTO `admin_module` (`id`, `title`, `description`, `label`, `module`, `thumb`, `image_file`, `admin_menu_id`, `admin_licence_id`, `sequence`, `content`, `created_at`, `updated_at`) VALUES
(1, 'CMS', 'Content Management module', 'Content Manager', 'cms', '/backend/images/icons/cms.png', '/backend/images/graphics/cms.png', 2, 1, 2, '<p>\n	<img alt="" src="/golive/media/image/graphics/original/web_design_graphic.gif" style="width: 300px; height: 300px; float: right;" />RhemaSys Content Management suites comprise functionalities and subsystems that enables site adminstrators manage their sites contents with ease.</p>\n<p>\n	The functionalies provided are easy to use with help provided to help adminstrators make maximum use of the tool provided without the need for any web programming knowledge or skill.</p>\n<p>\n	The functionalities and tools provided include the following:</p>\n<ul>\n	<li>\n		User defined content generation and management</li>\n	<li>\n		Unlimited page creation</li>\n	<li>\n		Page Templating</li>\n	<li>\n		Caching and Site Perfomance Improvements</li>\n	<li>\n		Multi-level Menu Generation and Access Control</li>\n</ul>\n<p>\n	&nbsp;</p>\n<div firebugversion="1.5.4" id="_firebugConsole" style="display: none;">\n	&nbsp;</div>', '2010-02-08 20:41:27', '2010-07-19 22:41:59'),
(2, 'Blog', '', 'Comments and Reviews', 'blog', '/backend/images/icons/blog.png', '/backend/images/graphics/blog.png', 3, 3, 4, '', '2010-02-08 20:41:59', '2010-06-13 20:18:44'),
(3, 'Email', '', 'Email Marketing', 'email', '/backend/images/icons/email.png', '/backend/images/graphics/email.png', 5, 3, 5, '', '2010-02-08 20:42:30', '2010-06-13 20:18:51'),
(4, 'Admin', '', 'Super Adminstrator', 'admin', '/backend/images/icons/admin.png', '/backend/images/graphics/admin.png', 1, 2, 1, '', '2010-02-08 20:43:02', '2010-06-13 20:18:20'),
(5, 'eCommerce', '', 'eCommerce', 'ecom', '/backend/images/icons/cart.png', '/backend/images/graphics/cart.png', 4, 2, 3, '', '2010-02-08 20:43:23', '2010-06-13 20:18:35'),
(6, 'Users', '', 'User Manager', 'help', '/backend/images/icons/help.png', '/backend/images/graphics/help.png', 17, 6, 1, '', '2010-02-08 20:43:44', '2010-06-05 11:07:31'),
(8, 'Help', 'Help generation module', 'Help', 'help', '/backend/images/icons/help.png', '/backend/images/graphics/help.png', 17, 2, 6, '', '2010-07-12 20:45:06', '2010-07-12 21:13:57');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin_subsite_licence`
--

INSERT INTO `admin_subsite_licence` (`id`, `admin_licence_id`, `is_active`, `created_at`, `updated_at`, `deleted_at`, `admin_subsite_id`) VALUES
(1, 1, 1, '2010-06-13 16:08:06', '2010-06-13 19:43:57', NULL, 8),
(2, 2, 1, '2010-04-05 17:25:13', '2010-06-13 19:43:57', NULL, 8),
(3, 4, 1, '2010-06-13 20:12:32', '2010-06-13 20:12:32', NULL, 8),
(4, 3, 1, '2010-06-13 20:12:32', '2010-06-13 20:12:32', NULL, 8);

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
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
  `active` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `excerpt` text,
  `is_active` tinyint(4) DEFAULT '1',
  `blog_category_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
-- Table structure for table `blog__model__blog_comment_version`
--

CREATE TABLE IF NOT EXISTS `blog__model__blog_comment_version` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(55) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `comment` text NOT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog__model__blog_comment_version`
--


-- --------------------------------------------------------

--
-- Table structure for table `blog__model__blog_post_version`
--

CREATE TABLE IF NOT EXISTS `blog__model__blog_post_version` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `excerpt` text,
  `is_active` tinyint(4) DEFAULT '1',
  `blog_category_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `image_file` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `category`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `component`
--


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
  `is_label` tinyint(4) DEFAULT '0',
  `is_visible` tinyint(4) DEFAULT '1',
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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
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
  `deleted_at` datetime DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
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
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `content` text,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `event_type_id` int(11) DEFAULT NULL,
  `address_book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `image_file` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_book_id_idx` (`address_book_id`),
  KEY `event_type_id_idx` (`event_type_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `event`
--


-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE IF NOT EXISTS `event_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `event_type`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `menu`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `page`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `page_footer`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `page_header`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `page_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `portfolio_photobook`
--

CREATE TABLE IF NOT EXISTS `portfolio_photobook` (
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
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `admin_subsite_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id_idx` (`event_id`),
  KEY `role_id_idx` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `portfolio_photobook`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `role`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `template`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `template_section`
--


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user`
--


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


--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog__model__blog_comment_version`
--
ALTER TABLE `blog__model__blog_comment_version`
  ADD CONSTRAINT `blog__model__blog_comment_version_id_blog_comment_id` FOREIGN KEY (`id`) REFERENCES `blog_comment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
