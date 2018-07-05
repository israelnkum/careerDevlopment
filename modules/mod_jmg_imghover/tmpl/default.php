<?php
/**
 * @package    Joomla.Site
 * @subpackage Modules PMcontent
 * @link http://doc-seo.com
 * @license        GNU/GPL, see LICENSE.php
 * mod_jmg_imghover is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 */
 
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
$doc  = JFactory::getDocument();
$doc->addStyleSheet(Juri::base() . 'modules/mod_jmg_imghover/assets/css/mod_jmg_imghover.css');
 ?>
 
 <figure class="<?php echo $mod_jmg_imghover_effect;?>" style="background-color:<?php echo $mod_jmg_imghover_background_color;?>;">
    <img src="<?php echo $mod_jmg_imghover_image;?>">
    <figcaption style="background-color:<?php echo $mod_jmg_imghover_background_color;?>;">
        <h2><?php echo $mod_jmg_imghover_head;?></h2>
        <p><?php echo $mod_jmg_imghover_text;?></p>
    </figcaption>
    <a href="<?php echo $mod_jmg_imghover_menu_link;?>"></a>
</figure>
	