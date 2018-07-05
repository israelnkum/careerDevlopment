<?php
/*
 * Copyright (C) joomla-monster.com
 * Website: http://www.joomla-monster.com
 * Support: info@joomla-monster.com
 *
 * JM Best Features is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * JM Best Features is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with JM Best Features. If not, see <http://www.gnu.org/licenses/>.
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

// joomla3.0 compability
defined('DS') or define('DS', DIRECTORY_SEPARATOR);

// Include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');

$version = new JVersion;
$jversion = '3';
if (version_compare($version->getShortVersion(), '3.0.0', '<')) {
		$jversion = '2.5';
}

$doc = JFactory::getDocument();

$moduleId = $module->id;
$id = 'jmm-best-features-' . $moduleId;

$data = trim( $params->get('items') );

$json_data = ( !empty($data) ) ? json_decode($data) : false;

if ($json_data === false) {
	echo JText::_('MOD_JM_BEST_FEATURES_NO_ITEMS');
	return false;
}

$field_pattern = '#^jform\[params\]\[([a-zA-Z0-9\_\-]+)\]#i';

$output_data = array();
foreach ($json_data as $item) {
	$item_obj = new stdClass();
	foreach($item as $field) {
		if (preg_match($field_pattern, $field->name, $matches)) {
			$attr = $matches[1];
			if (isset($item_obj->$attr)) {
				if (is_array($item_obj->$attr)) {
					$temp = $item_obj->$attr;
					$temp[] = $field->value;
					$item_obj->$attr = $temp;
				} else {
					$temp = array($item_obj->$attr);
					$temp[] = $field->value;
					$item_obj->$attr = $temp;
				}
			} else {
				$item_obj->$attr = $field->value;
			}
		}
	}
	$output_data[] = $item_obj;
}

$elements = count($output_data);

if( $elements < 1 ) {
	echo JText::_('MOD_JM_BEST_FEATURES_NO_ITEMS');
	return false;
}

$firsthalf = array();
$secondhalf = array();

foreach ($output_data as $k => $v) {
	if ($k % 2 == 0) {
		$firsthalf[] = $v;
	}
	else {
		$secondhalf[] = $v;
	}
}

$load_fa = $params->get('load_fontawesome', 0);

if( $load_fa == 1 ) {
	$doc->addStyleSheet('//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
}

$theme = $params->get('theme', 1);
$theme_class = ( $theme == 1 ) ? 'default' : 'override';

if( $theme == 1 ) { //default
	$doc->addStyleSheet(JURI::root(true).'/modules/mod_jm_best_features/assets/default.css');
}

$view = $params->get('view', 1);

$style = '';

if( $view == 1 || $view == 2 || $view == 3 ) {
	$i_f = 0;
	$i_s = 0;
	foreach($firsthalf as $item) {
		$i_f++;
		if( !empty($item->color) && empty($item->image_icon) ) {
			$style .= '#' . $id . ' .first-half .item-' . $i_f . ' .jmm-icon {'
							. 'color: ' . $item->color . ';'
							. '}';
		}
	}

	foreach($secondhalf as $item) {
		$i_s++;
		if( !empty($item->color) && empty($item->image_icon) ) {
			$style .= '#' . $id . ' .second-half .item-' . $i_s . ' .jmm-icon {'
							. 'color: ' . $item->color . ';'
							. '}';
		}
	}
} elseif( $view == 4 || $view == 5 ) {
	$i_a = 0;
	foreach($output_data as $item) {
		$i_a++;
		if( !empty($item->color) && empty($item->image_icon) ) {
			$style .= '#' . $id . ' .all-items .item-' . $i_a . ' .jmm-icon {'
							. 'color: ' . $item->color . ';'
							. '}';
		}
	}
}

if( !empty($style) ) {
	$doc->addStyleDeclaration($style);
}

$image = $params->get('image_file', '');

$link_icon = $params->get('link_icon', 0);

$span_size = $params->get('span_size', 6);

$mod_class_suffix = $params->get('moduleclass_sfx', '');

require JModuleHelper::getLayoutPath('mod_jm_best_features', $params->get('layout', 'default'));

?>
