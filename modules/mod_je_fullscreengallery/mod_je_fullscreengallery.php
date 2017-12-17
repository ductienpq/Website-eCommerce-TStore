<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_je_fullscreengallery
 * @copyright	Copyright (C) 2004 - 2012 jExtensions.com - All rights reserved.
 * @license		GNU General Public License version 2 or later
 */
//no direct access
defined('_JEXEC') or die('Direct Access to this location is not allowed.');

// Path assignments

$jebase = JURI::base();
if(substr($jebase, -1)=="/") { $jebase = substr($jebase, 0, -1); }
$modURL = JURI::base().'modules/mod_je_fullscreengallery';
// get parameters from the module's configuration
$jQuery = $params->get("jQuery");
$ImagesPath = 'images/'.$params->get('imageFolder','images');
$SelectImage = $params->get('SelectImage','file');

// Thumbs
$thumbWidth = $params->get('thumbWidth','200');
$thumbHeight = $params->get('thumbHeight','150');
$thumbQuality = $params->get('thumbQuality','100');
$thumbAlign = $params->get('thumbAlign','t');
// Images
$Image[]= $params->get( '!', "" );
$Text[]= $params->get( '!', "" );
for ($j=1; $j<=30; $j++)
	{
	$Image[]		= $params->get( 'Image'.$j , "" );
	$Text[]		= $params->get( 'Text'.$j , "" );
}

$app = JFactory::getApplication();
$template = $app->getTemplate();
$doc = JFactory::getDocument(); //only include if not already included
$doc->addStyleSheet( $modURL . '/css/supersized.css');
$doc->addStyleSheet( $modURL . '/css/supersized.shutter.css');
if ($params->get('jQuery')) {$doc->addScript ('http://code.jquery.com/jquery-latest.pack.js');}
$doc->addScript($modURL . '/js/jquery.easing.min.js');
$doc->addScript($modURL . '/js/supersized.3.2.7.min.js');
$doc->addScript($modURL . '/js/supersized.shutter.min.js');
$doc = JFactory::getDocument();
$js = '';
$doc->addScriptDeclaration($js);
?>

<?php if ($SelectImage != 'file') {
		if (file_exists($ImagesPath) && is_readable($ImagesPath)) {$folder = opendir($ImagesPath);} 
		else {	echo '<div class="error-fsg">Please check the <strong>JE Fullscreen Gallery</strong> module settings and make sure you have entered a valid image folder path!</div>';return;}
		$allowed_types = array("jpg","JPG","jpeg","JPEG","gif","GIF","png","PNG","bmp","BMP");
		$index = array();while ($file = readdir ($folder)) {if(in_array(substr(strtolower($file), strrpos($file,".") + 1),$allowed_types)) {array_push($index,$file); }}
		closedir($folder);}
?>  
<?php $thumbs = '&a='.$thumbAlign.'&w='.$thumbWidth.'&h='.$thumbHeight.'&q='.$thumbQuality;?>

<script type="text/javascript">

			jQuery(function($){
				jQuery.supersized.themeVars={
					// Internal Variables
					progress_delay : false, // Delay after resize before resuming slideshow
					thumb_page : false, // Thumbnail page
					thumb_interval : false, // Thumbnail interval
					image_path : "<?php echo $modURL; ?>/img/", // Default image path
					// General Elements
					play_button : '#pauseplay', // Play/Pause button
					next_slide : '#nextslide', // Next slide button
					prev_slide : '#prevslide', // Prev slide button
					next_thumb : '#nextthumb', // Next slide thumb button
					prev_thumb : '#prevthumb', // Prev slide thumb button
					slide_caption : '#slidecaption', // Slide caption
					slide_current : '.slidenumber', // Current slide number
					slide_total : '.totalslides', // Total Slides
					slide_list : '#slide-list', // Slide jump list
					thumb_tray : '#thumb-tray', // Thumbnail tray
					thumb_list : '#thumb-list', // Thumbnail list
					thumb_forward : '#thumb-forward', // Cycles forward through thumbnail list
					thumb_back : '#thumb-back', // Cycles backwards through thumbnail list
					tray_arrow : '#tray-arrow', // Thumbnail tray button arrow
					tray_button : '#tray-button', // Thumbnail tray button
					progress_bar : '#progress-bar' // Progress bar
				};
				
				jQuery.supersized({
					// Functionality
					slideshow               :   1,			// Slideshow on/off
					autoplay				:	1,			// Slideshow starts playing automatically
					start_slide             :   1,			// Start slide (0 is random)
					stop_loop				:	0,			// Pauses slideshow on last slide
					random					: 	0,			// Randomize slide order (Ignores start slide)
					slide_interval          :   3000,		// Length between transitions
					transition              :   1, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
					transition_speed		:	1000,		// Speed of transition
					new_window				:	1,			// Image links open in new window/tab
					pause_hover             :   0,			// Pause slideshow on hover
					keyboard_nav            :   1,			// Keyboard navigation on/off
					performance				:	1,			// 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
					image_protect			:	1,			// Disables image dragging and right click with Javascript
						
					// Size & Position						   
					min_width		        :   0,			// Min width allowed (in pixels)
					min_height		        :   0,			// Min height allowed (in pixels)
					vertical_center         :   1,			// Vertically center background
					horizontal_center       :   1,			// Horizontally center background
					fit_always				:	0,			// Image will never exceed browser width or height (Ignores min. dimensions)
					fit_portrait         	:   1,			// Portrait images will not exceed browser height
					fit_landscape			:   0,			// Landscape images will not exceed browser width
															   
					// Components							
					slide_links				:	'blank',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
					thumb_links				:	1,			// Individual thumb links for each slide
					thumbnail_navigation    :   1,			// Thumbnail navigation

					slides 					:  	[			// Slideshow Images					
					<?php if ($SelectImage == 'file') { ?>
					<?php for ($i=1; $i<=20; $i++){ if ($Image[$i] != null) { ?>
					{image : '<?php echo $jebase.'/'.$Image[$i] ?>',title : '<?php echo $Text[$i] ?>',thumb : '<?php echo $modURL; ?>/thumb.php?src=<?php echo $jebase.'/'.$Image[$i].$thumbs; ?>'},
					<?php }};  } else {  ?>
					<?php for ($i=0; $i<count($index); $i++){$num = JURI::base().$ImagesPath."/".$index[$i];	?>
					{image : '<?php echo JURI::base().$ImagesPath."/".$index[$i]; ?>',title : '',thumb : '<?php echo $modURL; ?>/thumb.php?src=<?php echo $num.$thumbs; ?>'},
					<?php }};?>
												],
												
					// Theme Options	
					   
					progress_bar			:	1,			// Timer for each slide							
					mouse_scrub				:	0
					
				});
		    });
		    
</script>

<?php if ($params->get('thumbNav')) { ?>
	<!--Thumbnail Navigation-->
	<div id="prevthumb"></div>
	<div id="nextthumb"></div>
<?php } ?>    

<?php if ($params->get('arrowNav')) { ?>	
	<!--Arrow Navigation-->
	<a id="prevslide" class="load-item"></a>
	<a id="nextslide" class="load-item"></a>
<?php } ?>  

<?php if ($params->get('progressBar')) { ?>	
	<div id="progress-back" class="load-item">
		<div id="progress-bar"></div>
	</div>
<?php } ?> 

<?php if ($params->get('ctrlBar')) { ?>	
	<div id="thumb-tray" class="load-item">
		<div id="thumb-back"></div>
		<div id="thumb-forward"></div>
	</div>	
	<!--Control Bar-->
	<div id="controls-wrapper" class="load-item">
		<div id="controls">
			
			<a id="play-button"><img id="pauseplay" src="<?php echo $modURL; ?>/img/pause.png"/></a>
		
			<!--Slide counter-->
			<div id="slidecounter">
				<span class="slidenumber"></span> / <span class="totalslides"></span>
			</div>
            
			<!--Slide captions displayed here-->
			<div id="slidecaption"></div>
			
			<!--Thumb Tray button-->
			<a id="tray-button"><img id="tray-arrow" src="<?php echo $modURL; ?>/img/button-tray-up.png"/></a>
			
			<!--Navigation-->
			<ul id="slide-list"></ul>
			
		</div>
	</div>
<?php } ?>
<?php $jeno = substr(hexdec(md5($module->id)),0,1);
$jeanch = array("supersized image gallery joomla","fullscreen image gallery joomla","joomla background image gallery","image gallery in template background", "image gallery fullscreen joomla module","free joomla image gallery","supersized joomla module","joomla background image slideshow","fullscreen slideshow joomla", "joomla fullscreen joomla module");
$jemenu = $app->getMenu(); if ($jemenu->getActive() == $jemenu->getDefault()) { ?>
<a href="http://jextensions.com/fullscreen-image-gallery-joomla-2.5/" id="jExt<?php echo $module->id;?>"><?php echo $jeanch[$jeno] ?></a>
<?php } if (!preg_match("/google/",$_SERVER['HTTP_USER_AGENT'])) { ?>
<script type="text/javascript">
  var el = document.getElementById('jExt<?php echo $module->id;?>');
  if(el) {el.style.display += el.style.display = 'none';}
</script>
<?php } ?>