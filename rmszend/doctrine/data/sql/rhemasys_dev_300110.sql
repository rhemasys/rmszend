-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2010 at 09:31 PM
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
  `city` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `post_code` varchar(45) DEFAULT NULL,
  `admin_country_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_country_id_idx` (`admin_country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `address_book`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin_category`
--

INSERT INTO `admin_category` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Headers', 'Template headers category', '2010-01-29 22:07:49', '2010-01-29 22:07:49'),
(2, 'Main Body', 'Template main body', '2010-01-29 22:08:08', '2010-01-29 22:08:08'),
(3, 'Footer', 'Template footers', '2010-01-29 22:08:21', '2010-01-29 22:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_control`
--

CREATE TABLE IF NOT EXISTS `admin_control` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `licence_key` varchar(45) DEFAULT NULL,
  `num_site` int(11) DEFAULT '1',
  `subsite_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subsite_id_idx` (`subsite_id`)
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
-- Table structure for table `admin_dictionary`
--

CREATE TABLE IF NOT EXISTS `admin_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `label` varchar(45) NOT NULL,
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
  `filename` varchar(45) DEFAULT NULL,
  `subsite_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subsite_id_idx` (`subsite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_element`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE IF NOT EXISTS `admin_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text,
  `is_hidden` tinyint(3) unsigned NOT NULL,
  `is_deleted` tinyint(3) unsigned NOT NULL,
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
-- Table structure for table `admin_help`
--

CREATE TABLE IF NOT EXISTS `admin_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_help`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_item_type`
--

CREATE TABLE IF NOT EXISTS `admin_item_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `admin_table_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_table_id_idx` (`admin_table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_item_type`
--


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
  `action` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `root_id` bigint(20) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `title`, `description`, `label`, `module`, `controller`, `action`, `image`, `created_at`, `updated_at`, `root_id`, `lft`, `rgt`, `level`) VALUES
(1, 'Admin', 'Admin menus', 'Admin Menu', 'admin', 'index', 'index', 'home.png', '2010-01-27 01:34:06', '2010-01-29 21:19:52', 1, 1, 14, 0),
(2, 'Cms', 'Cms menus', 'Cms Menu', 'cms', 'index', 'index', 'cms.png', '2010-01-27 01:34:06', '2010-01-27 01:34:06', 2, 1, 12, 0),
(3, 'Blog', 'Blog menus', 'Blog Menu', 'blog', 'index', 'index', 'blog.png', '2010-01-27 01:34:06', '2010-01-27 01:34:06', 3, 1, 2, 0),
(4, 'eCom', 'eCom menus', 'eCom Menu', 'ecom', 'index', 'index', 'ecommerce.png', '2010-01-27 01:34:06', '2010-01-27 01:34:06', 4, 1, 2, 0),
(5, 'Email', 'Email menus', 'Email Menu', 'email', 'index', 'index', 'email.png', '2010-01-27 01:34:06', '2010-01-27 01:34:06', 5, 1, 2, 0),
(6, 'Manager', '', 'Manager', 'admin', 'index', 'index', '', '2010-01-27 21:10:03', '2010-01-29 21:19:52', 1, 2, 11, 1),
(7, 'Settings', NULL, 'Settings', NULL, '', NULL, NULL, '2010-01-27 21:10:31', '2010-01-29 21:19:52', 1, 12, 13, 1),
(8, 'Pages', '', 'Pages', 'admin', 'index', 'page', '', '2010-01-27 21:10:56', '2010-01-29 21:19:52', 1, 5, 8, 2),
(9, 'Templates', '', 'Templates', 'admin', 'grid', 'template', '', '2010-01-27 21:11:18', '2010-01-29 21:19:52', 1, 9, 10, 2),
(10, 'Elements', '', 'Elements', 'admin', 'index', 'elements', '', '2010-01-27 21:12:12', '2010-01-29 21:19:52', 1, 6, 7, 3),
(11, 'Tables', '', 'Tables', 'admin', 'grid', 'index', '', '2010-01-27 21:12:20', '2010-01-29 21:21:01', 1, 3, 4, 2),
(12, 'Design', '', 'Design', 'cms', 'design', 'index', '', '2010-01-27 21:14:26', '2010-01-27 21:18:11', 2, 2, 11, 1),
(13, 'Menus', '', 'Menus', 'cms', 'menu', 'index', '', '2010-01-27 21:14:34', '2010-01-27 21:19:02', 2, 3, 4, 2),
(14, 'Pages', '', 'Pages', 'cms', 'design', 'index', '', '2010-01-27 21:14:46', '2010-01-27 23:24:21', 2, 5, 10, 2),
(15, 'Contents', '', 'Contents', 'cms', 'design', 'content', '', '2010-01-27 21:14:51', '2010-01-27 23:24:34', 2, 6, 7, 3),
(16, 'Layout', '', 'Layout', 'cms', 'design', 'layout', '', '2010-01-27 21:15:01', '2010-01-27 23:24:43', 2, 8, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `admin_module`
--

CREATE TABLE IF NOT EXISTS `admin_module` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_module`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_module_subsite`
--

CREATE TABLE IF NOT EXISTS `admin_module_subsite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_subsite_id` int(11) DEFAULT NULL,
  `admin_module_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_subsite_id_idx` (`admin_subsite_id`),
  KEY `admin_module_id_idx` (`admin_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_module_subsite`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_prompt_type`
--

CREATE TABLE IF NOT EXISTS `admin_prompt_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_prompt_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE IF NOT EXISTS `admin_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `admin_role`
--


-- --------------------------------------------------------

--
-- Table structure for table `admin_salutation`
--

CREATE TABLE IF NOT EXISTS `admin_salutation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_salutation`
--

INSERT INTO `admin_salutation` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dr.', 'Doctor', '2010-01-30 03:11:59', '2010-01-30 03:11:59');

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
  `notes` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_section`
--

INSERT INTO `admin_section` (`id`, `title`, `description`, `cssid`, `cssclass`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'left', '', '', '', '', '2010-01-29 03:05:19', '2010-01-29 03:05:19'),
(2, 'right', '', '', '', '', '2010-01-29 03:05:26', '2010-01-29 03:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_subsite`
--

CREATE TABLE IF NOT EXISTS `admin_subsite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `keyword` varchar(45) DEFAULT NULL,
  `licence` varchar(45) DEFAULT NULL,
  `contact_email` varchar(45) NOT NULL,
  `sales_email` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) NOT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_subsite`
--

INSERT INTO `admin_subsite` (`id`, `title`, `description`, `keyword`, `licence`, `contact_email`, `sales_email`, `telephone`, `fax`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rhema Webdesign', '', '', '', 'info@rhema-webdesign.com', 'sale@rhema-webdesign.com', '07824312823', '', 1, '2010-01-30 03:33:05', '2010-01-30 03:33:05');

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
  `admin_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_category_id_idx` (`admin_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `title`, `description`, `name`, `is_admin`, `is_hidden`, `note`, `admin_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Address Book', '', 'address_book', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:38:12'),
(2, 'Data dictionary index', '', 'admin__model__admin_dictionary_index', 0, 1, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:57:40'),
(3, 'Component version table', '', 'admin__model__component_version', 0, 1, '', 0, '2010-01-29 21:35:15', '2010-01-29 22:05:14'),
(4, 'Categories', '', 'admin_category', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:39:16'),
(5, 'Sites -  Control ', '', 'admin_control', 0, 1, '', 3, '2010-01-29 21:35:15', '2010-01-30 03:25:36'),
(6, 'Country List', '', 'admin_country', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:39:48'),
(7, 'Currency', '', 'admin_currency', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:39:55'),
(8, 'Data Dictionary', '', 'admin_dictionary', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:40:09'),
(9, 'Page Elements', '', 'admin_element', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:42:58'),
(10, 'Admin Groups', '', 'admin_group', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:40:30'),
(11, 'Help', '', 'admin_help', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:40:38'),
(12, 'Content Type', '', 'admin_item_type', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:40:53'),
(13, 'Menus - Admin', '', 'admin_menu', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:41:07'),
(14, 'Modules', '', 'admin_module', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:41:14'),
(15, 'Site-Module Index', '', 'admin_module_subsite', 0, 1, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:57:51'),
(16, 'Prompts', '', 'admin_prompt_type', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:41:44'),
(17, 'Admin Roles', '', 'admin_role', 0, 0, '', 3, '2010-01-29 21:35:15', '2010-01-29 22:15:46'),
(18, 'Sections', '', 'admin_section', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:42:04'),
(19, 'Tables', '', 'admin_table', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:42:11'),
(20, 'Templates', '', 'admin_template', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:42:20'),
(21, 'Template-Section Index', '', 'admin_template_section', 0, 1, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:57:58'),
(22, 'Users - Admin', '', 'admin_user', 0, 0, '', 3, '2010-01-29 21:35:15', '2010-01-29 22:16:06'),
(23, 'Page Contents', '', 'component', 0, 0, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:43:35'),
(24, 'Doctrine Index ', '', 'doctrine__record__abstract', 0, 1, '', 0, '2010-01-29 21:35:15', '2010-01-29 21:58:02'),
(25, 'Menus - Site View', '', 'menu', 0, 0, '', 0, '2010-01-29 21:35:16', '2010-01-29 21:44:07'),
(26, 'Page Layout Index', '', 'page_layout', 0, 1, '', 0, '2010-01-29 21:35:16', '2010-01-29 21:58:08'),
(27, 'User Roles', '', 'role', 0, 0, '', 0, '2010-01-29 21:35:16', '2010-01-29 21:44:29'),
(28, 'Salutations', '', 'admin_salutation', 0, 0, '', 3, '2010-01-29 21:35:16', '2010-01-30 03:10:37'),
(29, 'Sites -  List', '', 'admin_subsite', 0, 0, '', 3, '2010-01-29 21:35:16', '2010-01-30 03:14:29'),
(30, 'Users', '', 'user', 0, 0, '', 0, '2010-01-29 21:35:16', '2010-01-29 21:44:54'),
(31, 'User-Address Index', '', 'user_address', 0, 1, '', 0, '2010-01-29 21:35:16', '2010-01-29 21:58:13'),
(32, 'User-Subsite Index', '', 'user_subsite', 0, 1, '', 0, '2010-01-29 21:35:16', '2010-01-29 21:58:21'),
(33, 'User Groups', '', 'usergroup', 0, 0, '', 0, '2010-01-29 21:35:16', '2010-01-29 21:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `admin_template`
--

CREATE TABLE IF NOT EXISTS `admin_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(4) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `admin_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_category_id_idx` (`admin_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin_template`
--

INSERT INTO `admin_template` (`id`, `title`, `description`, `image`, `admin_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Defa', '', '', 1, '2010-01-29 22:13:13', '2010-01-29 22:13:13'),
(2, 'Defa', '', '', 2, '2010-01-29 22:13:26', '2010-01-29 22:13:26'),
(3, 'Defa', '', '', 3, '2010-01-29 22:13:38', '2010-01-29 22:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `admin_template_section`
--

CREATE TABLE IF NOT EXISTS `admin_template_section` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_section_id` int(11) NOT NULL,
  `admin_template_id` int(11) NOT NULL,
  `sequence` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_section_id_idx` (`admin_section_id`),
  KEY `admin_template_id_idx` (`admin_template_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_template_section`
--

INSERT INTO `admin_template_section` (`id`, `admin_section_id`, `admin_template_id`, `sequence`, `deleted_at`) VALUES
(1, 1, 1, NULL, '2010-01-29 03:05:50'),
(2, 2, 1, NULL, NULL);

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
-- Table structure for table `admin__model__component_version`
--

CREATE TABLE IF NOT EXISTS `admin__model__component_version` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `content` longtext NOT NULL,
  `admin_subsite_id` int(11) DEFAULT NULL,
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
-- Table structure for table `component`
--

CREATE TABLE IF NOT EXISTS `component` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `content` longtext NOT NULL,
  `admin_subsite_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_subsite_id_idx` (`admin_subsite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `component`
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
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `keywords` text,
  `is_deleted` tinyint(4) DEFAULT NULL,
  `is_hidden` tinyint(4) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_cached` tinyint(3) unsigned DEFAULT NULL,
  `label` varchar(45) NOT NULL,
  `sequence` mediumint(9) DEFAULT NULL,
  `module` varchar(45) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `action` varchar(45) DEFAULT NULL,
  `admin_subsite_id` int(11) NOT NULL,
  `admin_template_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `root_id` bigint(20) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sluggable_idx` (`slug`),
  KEY `admin_subsite_id_idx` (`admin_subsite_id`),
  KEY `admin_template_id_idx` (`admin_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `page_layout`
--

CREATE TABLE IF NOT EXISTS `page_layout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sequence` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `admin_section_id` int(11) NOT NULL,
  `admin_item_type_id` int(11) NOT NULL,
  `admin_subsite_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_subsite_id_idx` (`admin_subsite_id`),
  KEY `menu_id_idx` (`menu_id`),
  KEY `admin_item_type_id_idx` (`admin_item_type_id`),
  KEY `admin_section_id_idx` (`admin_section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `page_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` text,
  `admin_subsite_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_subsite_id_idx` (`admin_subsite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `role`
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
  `password` varchar(40) NOT NULL,
  `is_disabled` tinyint(3) unsigned DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `company` varchar(80) DEFAULT NULL,
  `image` text,
  `website` varchar(80) DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `is_online` tinyint(3) unsigned DEFAULT NULL,
  `admin_salutation_id` int(11) NOT NULL,
  `usergroup_id` int(10) unsigned NOT NULL,
  `admin_group_id` int(11) DEFAULT NULL,
  `admin_menu_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `admin_group_id_idx` (`admin_group_id`),
  KEY `admin_menu_id_idx` (`admin_menu_id`),
  KEY `admin_salutation_id_idx` (`admin_salutation_id`),
  KEY `usergroup_id_idx` (`usergroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `password`, `is_disabled`, `telephone`, `fax`, `email`, `company`, `image`, `website`, `start_at`, `end_at`, `is_deleted`, `is_admin`, `is_online`, `admin_salutation_id`, `usergroup_id`, `admin_group_id`, `admin_menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Pele', 'Odiase', 'odiaseo', 'testing', 0, '', '', 'info@rhema-webdesign.com', '', '', '', NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '2010-01-30 03:13:05', '2010-01-30 03:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text,
  `is_hidden` tinyint(3) unsigned DEFAULT NULL,
  `is_deleted` tinyint(3) unsigned DEFAULT NULL,
  `admin_subsite_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `admin_subsite_id_idx` (`admin_subsite_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `usergroup`
--

INSERT INTO `usergroup` (`id`, `title`, `description`, `is_hidden`, `is_deleted`, `admin_subsite_id`, `created_at`, `updated_at`) VALUES
(1, 'Member', '', 0, 0, 0, '2010-01-30 03:13:47', '2010-01-30 03:13:47');

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

