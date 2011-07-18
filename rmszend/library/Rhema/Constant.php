<?php

final class Rhema_Constant{
	const SITE_THEME_KEY   = 'site-theme';
	const SITE_CONFIG_KEY  = 'site-config';
	const NAVDATA_KEY      = 'navData';
	const WIDGET_SUFFIX    = 'Method';
	const ROUTE_GRID_INDEX = 'grid-index';
	const ROUTE_GRID_SAVE  = 'grid-model-save';
	const GRID_NODE		   = 'grid' ;
	const FRONT_MENU_ROUTE = 'site-default-route';

	const APPEND  = 'append';
	const PREPEND = 'prepend';
	const DATA_DICTIONARY = 'data-dictionary';
	const USER_ROLE_KEY   = 'user-role';
	const WEB_ENABLED_KEY = 'web-enabled';

	const MENU_MODULE 			= 'm_module';
	const MENU_CONTROLLER	  	= 'm_controller';
	const MENU_ACTION 			= 'm_action';
	const MENU_FRONTEND_KEY		= 'slug';

	const CACHE_MANAGER			= 'cache-manager';
	const CONTEXT_SITE          = 'site';
	const CONTEXT_ADMIN         = 'admin';
	const SCRIPT_INDEX          = 'SCRIPT_INDEX';
	const MESSAGE_DIV			= 'message-div-area'; // value is used in rhemasys.js

	const DEV_ENV               = 'development';
	const PRD_ENV               = 'production';
	const MOD_HEADER_KEY        = 'rms-dev';
	const PRE_QUERY_KEY         = 'PRE_QUERY_KEY';
	
	const REMOTE_DATA_CACHE     = 'REMOTE_DATA_CACHE';

}
define('AJAX_NAMESPACE', 'Rhema-Ajax');
define('CONTEXT_ADMIN', 'admin');
define('CONTEXT_SITE', 'site');
define('DEFAULT_MODULE', 'storefront');
define('SESS_NAMESPACE', 'rhemasys');
define('DB_DATE_FORMAT', 'Y-m-d H:i:s');
define('FRONT_MENU_ROUTE', 'site-default-route'); 'storefront-menu';
define('ADMIN_ROUTE', 'backend-menu');
define('HELP_ROUTE', 'tooltip');

define('NAV_ROUTE', 'product-nav');
define('MENU_PAGE_MAP', 'slug');

define('BRANCH_ROUTE', 'branch-category-navigation');
define('PRODUCT_ROUTE', 'product-detail');
define('BLOG_ROUTE', 'blog-post');
define('CATEGORY_ROUTE', 'branch-category-navigation');
define('CATEGORY_MAP', 'slug');
define('WEB_SETTING_INDEX', 'web-setting');
define('TEMP_ARRAY', 'template-array');
define('ADMIN_URL_CODE', 'master');

define('ADMIN_SITE_DIR', 'sites');
define('WIDGET_SEP', '~');

define('REST_SERVER', 'http://www.rhema-webdesign.com/rest/index');
define('RHEMASYS_HOME', 'rhema-webdesign.com');
define('PHOTOBOOK_DIR' ,  SITE_DIR . '/media/portfolio/photobook');
define('AUDIO_DIR' ,  SITE_DIR . '/media/audio/');
//=================== Nodes =============================
define('NODE_GRID', 'grid');

//================== Prefixes=============================
define('ADMIN_PREFIX', 'Admin_Model_');
define('MODEL_PREFIX', ADMIN_PREFIX);
define('HELP_PREFIX', ADMIN_PREFIX);
define('ECOM_PREFIX', ADMIN_PREFIX);
define('BLOG_PREFIX', ADMIN_PREFIX);
define('HEADFILE_PREFIX', 'rms-file-');

define('PUBLIC_KEY', '6LdFeLsSAAAAAF0VKct0PtgJ0b0k6u-tEPdWT_jp');
define('PRIVATE_KEY', '6LdFeLsSAAAAAAwW90OJw1qL5CcjBnFZlREDelZK');

//================== Suffixes ============================


//================== Paths ==============================
define('SCRIPT_PATH', '/backend/scripts');
define('CSS_PATH', '/backend/css');
define('ACL_RULE', APPLICATION_PATH . '/configs/acl_rule.php');
define('WIDGET_PATH', realpath(APPLICATION_PATH . '/../library/Rhema/Widget'));

//================= DB Table patterms ======================

define('REGEX_TABLE_ADMIN', '/^' . MODEL_PREFIX . '(?=Admin)[a-z]+$/i');
define('REGEX_TABLE_SITE', '/^' . MODEL_PREFIX . '(?!Admin)[a-z]+$/i');
define('REGEX_TABLE_PAGE', '/^' . MODEL_PREFIX . '(?=Page_)[a-z]+$/i');
define('REGEX_TABLE_ALL', '/^(' . MODEL_PREFIX . ')[a-z]+$/i');

 
