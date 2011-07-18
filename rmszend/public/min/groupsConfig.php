<?php
/**
 * Groups configuration for default Minify implementation
 * @package Minify
 */

/**
 * You may wish to use the Minify URI Builder app to suggest
 * changes. http://yourdomain/min/builder/
 **/

$dir   = $_GET['dir'];
$theme = isset($_GET['theme']) ? $_GET['theme'] : 'default';
$group['admin.js'] = array(   '//backend/scripts/global.js'
							, '//backend/scripts/dock/jquery.jqDock.min.js'
							, '//backend/scripts/jstree/jquery.tree.min.js'
							//, '//backend/scripts/grid/src/ui.multiselect.js'

							, '//backend/scripts/multiselect/js/plugins/localisation/jquery.localisation-min.js'
							, '//backend/scripts/multiselect/js/plugins/tmpl/jquery.tmpl.1.1.1.js'
							, '//backend/scripts/multiselect/js/plugins/blockUI/jquery.blockUI.js'
							, '//backend/scripts/multiselect/js/ui.multiselect.js'
							, '//backend/scripts/cluetip/jquery.cluetip.js'
							, '//backend/scripts/jstree/plugins/jquery.tree.checkbox.js'
       						, '//backend/scripts/jstree/plugins/jquery.tree.contextmenu.js'
 							, '//backend/scripts/grid/src/i18n/grid.locale-en.js'
 							, '//backend/scripts/grid/src/grid.tbltogrid.js'
							, '//backend/scripts/grid/js/jquery.jqGrid.min.js'
						//	, '//backend/scripts/jpicker/jpicker-1.1.6.min.js'
						 	, '//backend/scripts/dateplustimepicker/js/jquery-dateplustimepicker.min.js'
						//	, '//backend/scripts/daterangepicker/js/daterangepicker.jQuery.js'
					);

$group['admin.css'] =   array(    '//backend/scripts/jquery/css/redmond/jquery-ui-1.8.9.custom.css'
								, '//backend/scripts/grid/css/ui.jqgrid.css'
								//, '//backend/scripts/grid/src/css/ui.multiselect.css'
								, '//backend/scripts/multiselect/css/ui.multiselect.css'
								, '//backend/scripts/cluetip/jquery.cluetip.css'
								, '//backend/css/layout.css'
								, '//backend/css/menu.css'
								, '//backend/css/general.css'
								, '//backend/css/adminStyle.css'
								, '//backend/scripts/jstree/themes/default/style.css'
								, '//backend/scripts/jstree/themes/checkbox/style.css'
								, '//backend/scripts/jpicker/css/jPicker-1.1.6.min.css'
								, '//media/css/global.css'
							 	, '//backend/scripts/dateplustimepicker/css/jquery-dateplustimepicker.min.css'
							//	, '//backend/scripts/daterangepicker/css/ui.daterangepicker.css'
							);

$group['site.js'] =  array(  //'//backend/scripts/global.js' ,
						 	 "//{$dir}/{$theme}/scripts/golive.js",
						 	 '//backend/scripts/maxheight.js'
						);

$group['site.css'] =  array( "//{$dir}/{$theme}/css/import.css",
							 '//media/css/global.css',
							 "//{$dir}/{$theme}/css/style.css"
						);

return $group;