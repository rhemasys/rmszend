
INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `password`, `telephone`, `fax`, `email`, `company`, `image`, `website`, `start_at`, `end_at`, `is_admin`, `is_online`, `admin_salutation_id`, `usergroup_id`, `admin_group_id`, `admin_menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Pele', 'Odiase', 'odiaseo', 'testing', '', '', 'info@rhema-webdesign.com', '', '', '', NULL, NULL, 0, 0, 1, 0, 0, 1, '2010-01-30 03:13:05', '2010-01-30 03:13:05');

INSERT INTO `admin_template_section` (`id`, `admin_section_id`, `admin_template_id`, `sequence`, `deleted_at`) VALUES
(1, 1, 1, NULL, '2010-01-29 03:05:50'),
(2, 2, 1, NULL, NULL);

INSERT INTO `admin_template` (`id`, `title`, `description`, `image`, `admin_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Defa', '', '', 1, '2010-01-29 22:13:13', '2010-01-29 22:13:13'),
(2, 'Defa', '', '', 2, '2010-01-29 22:13:26', '2010-01-29 22:13:26'),
(3, 'Defa', '', '', 3, '2010-01-29 22:13:38', '2010-01-29 22:13:38');

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

INSERT INTO `admin_subsite` (`id`, `title`, `description`, `keyword`, `licence`, `contact_email`, `sales_email`, `telephone`, `fax`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rhema Webdesign', '', '', '', 'info@rhema-webdesign.com', 'sale@rhema-webdesign.com', '07824312823', '', 1, '2010-01-30 03:33:05', '2010-01-30 03:33:05');

INSERT INTO `admin_section` (`id`, `title`, `description`, `cssid`, `cssclass`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'left', '', '', '', '', '2010-01-29 03:05:19', '2010-01-29 03:05:19'),
(2, 'right', '', '', '', '', '2010-01-29 03:05:26', '2010-01-29 03:05:26');

INSERT INTO `admin_salutation` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dr.', 'Doctor', '2010-01-30 03:11:59', '2010-01-30 03:11:59');

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

INSERT INTO `admin_category` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Headers', 'Template headers category', '2010-01-29 22:07:49', '2010-01-29 22:07:49'),
(2, 'Main Body', 'Template main body', '2010-01-29 22:08:08', '2010-01-29 22:08:08'),
(3, 'Footer', 'Template footers', '2010-01-29 22:08:21', '2010-01-29 22:08:21');



