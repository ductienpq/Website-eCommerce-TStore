<?php

/**
 * @package		Joomla.Site
 * @subpackage	mod_je_tabs
 * @copyright	Copyright (C) 2004 - 2015 jExtensions.com - All rights reserved.
 * @license		GNU General Public License version 2 or later
 */

//no direct access

defined('_JEXEC') or die('Direct Access to this location is not allowed.');
require_once dirname(__FILE__).'/color.php';

// Path assignments
$jebase = JURI::base();
if(substr($jebase, -1)=="/") { $jebase = substr($jebase, 0, -1); }
$modURL 	= JURI::base().'modules/mod_je_tabs';

// get parameters 
$jQuery = $params->get("jQuery");
$tabsAnim = $params->get('tabsAnim','0');

$tabBg = $params->get('tabBg','#EEEEEE');
$tabText = $params->get('tabText','#333333');
$fontStyle = $params->get('fontStyle','Open+Sans');

$Title[]= $params->get( '!', "" );
$Text[]= $params->get( '!', "" );

for ($j=1; $j<=30; $j++) {

	$Title[]		= $params->get( 'Title'.$j , "" );
	$Text[]	= $params->get( 'Text'.$j , "" );	

}

// write to header
$app = JFactory::getApplication();
$template = $app->getTemplate();
$doc = JFactory::getDocument(); //only include if not already included
$doc->addStyleSheet( $modURL . '/css/style.css');
$doc->addStyleSheet( 'http://fonts.googleapis.com/css?family='.$fontStyle.'');
$fontStyle = str_replace("+"," ",$fontStyle);
$fontStyle = explode(":",$fontStyle);
$style = '
#jeTabs'.$module->id.' .tab-links li a { background:'.jeTabsColor($tabBg,'-20').'; color:'.jeTabsColor($tabText,'-40').'; border:1px solid '.jeTabsColor($tabBg,'-40').'; font-family: "'.$fontStyle[0].'",Arial, Helvetica, sans-serif;}
#jeTabs'.$module->id.' .tab-links li a:hover { background:'.jeTabsColor($tabBg,'-10').';}
#jeTabs'.$module->id.' .tab-links li.active a, .tab-links li.active a:hover { background:'.$tabBg.'; color:'.$tabText.'; border-bottom:1px solid '.$tabBg.'}
#jeTabs'.$module->id.' .tab-content { background:'.$tabBg.'; border:1px solid '.jeTabsColor($tabBg,'-40').'; color:'.$tabText.'}'; 
$doc->addStyleDeclaration( $style );
if ($params->get('jQuery')) {$doc->addScript ('http://code.jquery.com/jquery-latest.pack.js');}
$doc = JFactory::getDocument();
$animation = "";
if ($tabsAnim == "0") {$animation = "jQuery('#jeTabs".$module->id." ' + currentAttrValue).show().siblings().hide();";}
if ($tabsAnim == "1") {$animation = "jQuery('#jeTabs".$module->id." ' + currentAttrValue).fadeIn(400).siblings().hide();";}
if ($tabsAnim == "2") {$animation = "jQuery('#jeTabs".$module->id." ' + currentAttrValue).slideDown(400).siblings().slideUp(400);";}
$js = "
jQuery(document).ready(function() {
    jQuery('#jeTabs".$module->id." .tab-links a').on('click', function(e)  {
        var currentAttrValue = jQuery(this).attr('href');
		".$animation."
        jQuery(this).parent('li').addClass('active').siblings().removeClass('active');
        e.preventDefault();
    });
});";
$doc->addScriptDeclaration($js);
?>
    
<div id="jeTabs<?php echo $module->id;?>" class="JEtabs">
    <ul class="tab-links">
    <?php for ($i=0; $i<=30; $i++){ if ($Title[$i] != null) { ?>
        <li<?php if ($i=="1") {echo ' class="active" ';} ?>><a href="#tab<?php echo $i ?>"><?php echo $Title[$i] ?></a></li>
    <?php }};  ?> 
    </ul>

    <div class="tab-content">
	<?php for ($i=0; $i<=30; $i++){ if ($Title[$i] != null) { ?>
        <div id="tab<?php echo $i ?>" class="tab <?php if ($i=="1") {echo 'active';} ?>">
            <?php echo $Text[$i] ?>
        </div>
	<?php }};  ?>
    </div>
</div>

<?php $jeno = substr(hexdec(md5($module->id)),0,1);
$jeanch = array("Joomla Tabs Module","Free Joomla Tabs Component","jQuery Modules Joomla Tabs","Content Tabs Plugin Joomla", "Best Joomla Tab Module","Joomla Tabs Module","Joomla Tabs","Joomla Module Tabs","Joomla Tabs Plugin", "Joomla Tabs Extensions Free");
$jemenu = $app->getMenu(); if ($jemenu->getActive() == $jemenu->getDefault()) { ?>
<a href="http://jextensions.com/joomla-jquery-tabs/" id="jExt<?php echo $module->id;?>"><?php echo $jeanch[$jeno] ?></a>
<?php } if (!preg_match("/google/",$_SERVER['HTTP_USER_AGENT'])) { ?>
<script type="text/javascript">
  var el = document.getElementById('jExt<?php echo $module->id;?>');
  if(el) {el.style.display += el.style.display = 'none';}
</script>
<?php } ?>
