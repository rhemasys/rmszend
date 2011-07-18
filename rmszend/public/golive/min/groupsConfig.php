<?php
/**
 * Groups configuration for default Minify implementation
 * @package Minify
 */

/**
 * You may wish to use the Minify URI Builder app to suggest
 * changes. http://yourdomain/min/builder/
 **/

//return array(
    // 'js' => array('//js/file1.js', '//js/file2.js'),
    // 'css' => array('//css/file1.css', '//css/file2.css'),

    // custom source example
    /*'js2' => array(
        dirname(__FILE__) . '//min_unit_tests/_test_files/js/before.js',
        // do NOT process this file
        new Minify_Source(array(
            'filepath' => dirname(__FILE__) . '//min_unit_tests/_test_files/js/before.js',
            'minifier' => create_function('$a', 'return $a;')
        ))
    ),//*/

    /*'js3' => array(
        dirname(__FILE__) . '//min_unit_tests/_test_files/js/before.js',
        // do NOT process this file
        new Minify_Source(array(
            'filepath' => dirname(__FILE__) . '//min_unit_tests/_test_files/js/before.js',
            'minifier' => array('Minify_Packer', 'minify')
        ))
    ),//*/
//);


$group['admin.js'] = array(   '//backend/scripts/global.js' 
							, '//backend/scripts/dock/jquery.jqDock.min.js'
							, '//backend/scripts/jstree/jquery.tree.min.js'
							, '//backend/scripts/jquery/js/ui.multiselect.js'
							, '//backend/scripts/cluetip/jquery.cluetip.js'
							, '//backend/scripts/jstree/plugins/jquery.tree.checkbox.js'
       						, '//backend/scripts/jstree/plugins/jquery.tree.contextmenu.js'
 							, '//backend/scripts/grid/src/i18n/grid.locale-en.js'
 							, '//backend/scripts/grid/src/grid.tbltogrid.js'
							, '//backend/scripts/grid/js/jquery.jqGrid.min.js' 
					);
$group['admin.css'] =   array(    '//backend/scripts/jquery/css/rhema2/jquery-ui-1.7.2.custom.css'
								, '//backend/scripts/grid/css/ui.jqgrid.css'
								, '//backend/scripts/jquery/css/ui.multiselect.css'
								, '//backend/scripts/cluetip/jquery.cluetip.css'
								, '//backend/css/layout.css'
								, '//backend/css/menu.css'
								, '//backend/css/general.css'
								, '//backend/css/adminStyle.css'
								, '//backend/scripts/jstree/themes/default/style.css'
								, '//backend/scripts/jstree/themes/checkbox/style.css' 

							);

$group['site.js'] =  array(  '//backend/scripts/global.js' 
						 	, '//golive/scripts/golive.js'
						 	, '//backend/scripts/maxheight.js' 
						);

$group['site.css'] =  array(  '//media/css/layout.css'
							 ,'//golive/summer/css/style.css' 
						);
return $group;