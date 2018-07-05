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

class ModBestFeaturesHelper
{

	public static function renderColumns($array, $link_icon)
	{
		$i = 0;
		$output = '';

		foreach($array as $item) {

			$i++;

			$alt = ( !empty($item->alt) ) ? $item->alt : '';

			$output .= '<div class="jmm-item item-' . $i . '">';

				if( !empty($item->image_icon) || !empty($item->icon) ) {

					if( !empty($item->url) && $link_icon ) {
						$output .= '<a href="' . $item->url . '">';
					}

					if( !empty($item->image_icon) ) {
						$output .= '<div class="jmm-icon image"><img src="' . $item->image_icon . '" alt="' . $alt . '"></div>';
					} elseif( !empty($item->icon) ) {
						$output .= '<div class="jmm-icon"><span class="' . $item->icon . '" aria-hidden="true"></span></div>';
					}

					if( !empty($item->url) && $link_icon ) {
						$output .= '</a>';
					}

				}

				if( !empty($item->title) ) {
					$output .= '<div class="jmm-title">';
					if( !empty($item->url) ) {
						$output .= '<a href="' . $item->url . '">';
					}

					$output .= $item->title;

					if( !empty($item->url) ) {
						$output .= '</a>';
					}
					$output .= '</div>';
				}

				if( !empty($item->text) ) {
					$output .= '<div class="jmm-text">' . $item->text . '</div>';
				}

			$output .= '</div>';
		}

		return $output;
	}
}
