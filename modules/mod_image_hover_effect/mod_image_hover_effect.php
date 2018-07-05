<?php
/**
* @title		image hover effect module
* @website		http://www.joombest.com
* @copyright	Copyright (C) 2016 joombest.com. All rights reserved.
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/
    // no direct access
    defined('_JEXEC') or die('Restricted access');
	$mosConfig_absolute_path = JPATH_SITE;
	$PathConfig_live_site = JURI :: base();
	if(substr($PathConfig_live_site, -1)=="/") { $PathConfig_live_site = substr($PathConfig_live_site, 0, -1); }

    $module_name             = basename(dirname(__FILE__));
    $module_dir              = dirname(__FILE__);
    $module_id               = $module->id;
    $document                = JFactory::getDocument();
    $style                   = $params->get('sp_style');

    if( empty($style) )
    {
        JFactory::getApplication()->enqueueMessage( 'Slider style no declared. Check image hover effect configuration and save again from admin panel' , 'error');
        return;
    }

    $layoutoverwritepath     = JURI::base(true) . '/templates/'.$document->template.'/html/'. $module_name. '/tmpl/'.$style;
    $document                = JFactory::getDocument();
    require_once $module_dir.'/helper.php';
    $helper = new mod_Imghoveeffec($params, $module_id);
    $data = (array) $helper->display();
	$enablejQuery 				= $params->get('enablejQuery', 1);
	$width_module			= $params->get('width_module', "100%");
	$height_module			= $params->get('height_module', "500");
	$choose_style			= $params->get('choose_style', 1);
	$color_hover            = $params->get('color_hover', '#4f90cf');
	$color_title            = $params->get('color_title', '#CF0000');
	$change_text            = $params->get('change_text', '40px');
	
	$font_size_title		= $params->get('font_size_title', '90%');



    if(  is_array( $helper->error() )  )
    {
        JFactory::getApplication()->enqueueMessage( implode('<br /><br />', $helper->error()) , 'error');
    } else {
        if( file_exists($layoutoverwritepath.'/view.php') )
        {
            require(JModuleHelper::getLayoutPath($module_name, $layoutoverwritepath.'/view.php') );   
        } else {
            require(JModuleHelper::getLayoutPath($module_name, $style.'/view') );   
        }

        $helper->setAssets($document, $style);
}