<?php
/**
* @title		image hover effect module
* @website		http://www.joombest.com
* @copyright	Copyright (C) 2016 joombest.com. All rights reserved.
* @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
*/

    // no direct access
    defined('_JEXEC') or die;
?>


<link rel="stylesheet" href="<?php echo $PathConfig_live_site; ?>/modules/mod_image_hover_effect/tmpl/Imghoveeffec/css/normalize.css">
    <link rel="stylesheet" href="<?php echo $PathConfig_live_site; ?>/modules/mod_image_hover_effect/tmpl/Imghoveeffec/css/demo.css">
    <link rel="stylesheet" href="<?php echo $PathConfig_live_site; ?>/modules/mod_image_hover_effect/tmpl/Imghoveeffec/css/component.css">
		
		<script src="<?php echo $PathConfig_live_site; ?>/modules/mod_image_hover_effect/tmpl/Imghoveeffec/js/hovereffect-min.js"></script>
		
<style>
.grid {
	margin: 10px auto 10px;
	max-width: 1000px;
	width: <?php echo $width_module;?>%;
	height: <?php echo $height_module;?>px;
}
.grid svg path {
	fill: <?php echo $color_hover;?>;
}
.grid figcaption h2 {
	margin: 0 0 <?php echo $change_text;?>px 0;
	color: <?php echo $color_title;?>;
	text-transform: uppercase;
	letter-spacing: 1px;
	font-weight: 100;
	font-size: <?php echo $font_size_title;?>%;
	-webkit-transition: -webkit-transform 0.3s;
	transition: transform 0.3s;
}
.grid figure {
	position: relative;
	overflow: hidden;
	margin: 5px;
	background: #333;
	height: <?php echo $height_module;?>px;
}

</style>

<div class="img-grid-vov" id="img-grid-vov" value="9">
<div id="grid" class="grid clearfix">
<?php
			foreach($data as $index=>$value)
			{
			?>
				<a href="<?php echo $value['Link']?>" data-path-hover="m 180,34.57627 -180,0 L 0,0 180,0 z">
					<figure>
					
						<img src="<?php echo JURI::root().$value['image'] ?>" />
						
						<?php if($choose_style ==1) { ?>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 0 0 L 0 182 L 90 126.5 L 180 182 L 180 0 L 0 0 z "/></svg>
						<?php } ?>
						<?php if($choose_style ==2) {?>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="m 0,0 0,171.14385 c 24.580441,15.47138 55.897012,24.75772 90,24.75772 34.10299,0 65.41956,-9.28634 90,-24.75772 L 180,0 0,0 z"/></svg>
						<?php } ?>
						<?php if($choose_style ==3) {?>
						<svg viewBox="0 0 180 320" preserveAspectRatio="none"><path d="M 180,160 0,218 0,0 180,0 z"/></svg>
						<?php } ?>
						<figcaption>
							<h2><?php echo $value['title']?></h2>
							<p><?php echo $value['intotext']?></p>
							<button>View</button>
						</figcaption>
					</figure>
				</a>
			<?php
			} ?>	
			</div>
			</div>
<script src="<?php echo $PathConfig_live_site; ?>/modules/mod_image_hover_effect/tmpl/Imghoveeffec/js/imghovereffect.js"></script>
