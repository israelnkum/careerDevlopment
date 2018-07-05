<?php
/**
 * @package   Gantry 5 Theme
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2015 RocketTheme, LLC
 * @copyright Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license   GNU/GPLv2 and later
 *
 * http://www.gnu.org/licenses/gpl-2.0.html
 */

defined('_JEXEC') or die;

$msgList = $displayData['msgList'];
$style = "alert";
$style = "notify";
?>
<?php if ($style == "notify") : ?>
	<?php if (is_array($msgList) && !empty($msgList)) : ?>
		<?php foreach ($msgList as $type => $msgs) : ?>
			<?php if (!empty($msgs)) : ?>
				<script>
					window.onload = function () {
						<?php foreach ($msgs as $msg) : ?>
						UIkit.notify({
							message : '<?php echo $msg; ?>',
							status  : 'info',
							timeout : 7000,
							pos     : 'bottom-right'
						});
						<?php endforeach; ?>
					}
				</script>
			<?php endif; ?>
		<?php endforeach; ?>
	<?php endif; ?>
<?php endif; ?>

<?php if ($style == "alert") : ?>
	<?php if (is_array($msgList) && !empty($msgList)) : ?>
		<div id="system-message-container">
			<div id="system-message">
				<?php foreach ($msgList as $type => $msgs) : ?>
					<div class="alert alert-<?php echo $type; ?>">
						<?php // This requires JS so we should add it trough JS. Progressive enhancement and stuff. ?>
						<a class="close" data-dismiss="alert">×</a>

						<?php if (!empty($msgs)) : ?>
							<h4 class="alert-heading"><?php echo JText::_($type); ?></h4>
							<div>
								<?php foreach ($msgs as $msg) : ?>
										<p><?php echo $msg; ?></p>
								<?php endforeach; ?>
							</div>
						<?php endif; ?>
					</div>
				<?php endforeach; ?>
			</div>
		</div>
	<?php endif; ?>
<?php endif; ?>
