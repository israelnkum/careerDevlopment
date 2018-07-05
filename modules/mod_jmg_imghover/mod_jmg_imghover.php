<?php
/**
 * @package    Joomla.Site
 * @subpackage Modules JMG Img Hover
 * @link http://joomega.com
 * @license        GNU/GPL, see LICENSE.php
 */
 
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
 
// Include the syndicate functions only once
require_once __DIR__ . '/helper.php';


$mod_jmg_imghover_image = $params->get('mod_jmg_imghover_image');
$mod_jmg_imghover_head = $params->get('mod_jmg_imghover_head');
$mod_jmg_imghover_text = $params->get('mod_jmg_imghover_text');
$mod_jmg_imghover_effect = $params->get('mod_jmg_imghover_effect');
$mod_jmg_imghover_background_color = $params->get('mod_jmg_imghover_background_color');
$mod_jmg_imghover_menu_id = $params->get('mod_jmg_imghover_menu_id');

$mod_jmg_imghover_menu_link = JRoute::_("index.php?Itemid={$mod_jmg_imghover_menu_id}");

require( JModuleHelper::getLayoutPath( 'mod_jmg_imghover' ) );
?>