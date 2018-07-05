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

//ordering

/*
1. text img text
2. img text text
3. text text img
4. text img
5. img text
*/

$image_span = ( !empty($image) && isset($span_size) ) ? (int)$span_size : 0;
$alt = '';

$isImg = ( !empty($image) ) ? true : false;
$isSecond = ( $elements > 1 ) ? true : false;

//spans
if( $view == 1 || $view == 2 || $view == 3 ) {
	$col_span = ( $isSecond ) ? floor((12 - $image_span) /2) : floor(12 - $image_span);
} elseif( $view == 4 || $view == 5 ) {
	$col_span = floor(12 - $image_span);
}

//content
$img_content = ( $isImg ) ? '<div class="image-col span' . $image_span . '"><img alt="' . $alt . '" src="' . $image . '"></div>' : false;
$first_content = '<div class="first-half span' . $col_span . '">' . ModBestFeaturesHelper::renderColumns($firsthalf, $link_icon) . '</div>';
$second_content = ( $isSecond ) ? '<div class="second-half span' . $col_span . '">' . ModBestFeaturesHelper::renderColumns($secondhalf, $link_icon) . '</div>' : false;
$all_content = '<div class="all-items span' . $col_span . '">' . ModBestFeaturesHelper::renderColumns($output_data, $link_icon) . '</div>';

if( $view == 1 ) { //1. text img text

	$col1_content = $first_content;
	$col2_content = $img_content;
	$col3_content = $second_content;

} elseif( $view == 2 ) { //2. img text text

	$col1_content = $img_content;
	$col2_content = $first_content;
	$col3_content = $second_content;

} elseif( $view == 3 ) { //3. text text img

	$col1_content = $first_content;
	$col2_content = $second_content;
	$col3_content = $img_content;

} elseif( $view == 4 ) { //4. text img

	$col1_content = $all_content;
	$col2_content = $img_content;
	$col3_content = false;

} elseif( $view == 5 ) { //5. img text

	$col1_content = $img_content;
	$col2_content = $all_content;
	$col3_content = false;

}

//class
$view_class = ( !empty($view) ) ? 'view-' . $view : '';

if( $isImg ) {
	$view_class .= ' img';
}
if( $isSecond ) {
	$view_class .= ' second';
}

?>

<div id="<?php echo $id; ?>" class="jmm-best-features <?php echo $theme_class . ' ' . $view_class . ' ' . $mod_class_suffix; ?>">
	<div class="jmm-best-features-in">
		<div class="row-fluid">

			<?php

			if( $col1_content ) {
				echo $col1_content;
			}

			if( $col2_content ) {
				echo $col2_content;
			}

			if( $col3_content ) {
				echo $col3_content;
			}

			?>

		</div>
	</div>
</div>
