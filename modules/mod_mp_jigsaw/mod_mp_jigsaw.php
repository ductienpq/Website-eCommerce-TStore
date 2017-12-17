<?php
/**
mod_mp_jigsaw for Joomla! 
Author   : Mypuzzle.org
Website  : http://www.mypuzzle.org
Date     : 02 October 2012
Licence  : GPL-2
Copyright: mypuzzle.org
Notes    : Visible Copyrights and Hyperlink to mypuzzle.org required
*/
require_once dirname(__FILE__).'/jigsaw-plugin.php';

// no direct access
defined('_JEXEC') or die('Restricted access');

if(!defined('DS')){
    define('DS',DIRECTORY_SEPARATOR);
}

//JHTML::_('behavior.mootools');
$document = JFactory::getDocument();
$document->addScript( "http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" );
//$document->addCustomTag( '<script type="text/javascript">jQuery.noConflict();</script>' );
$document->addScript(JURI::base(). 'modules/mod_mp_jigsaw/js/jquery.bpopup-0.7.0.min.js');
$document->addScript(JURI::base(). 'modules/mod_mp_jigsaw/js/jigsaw_plugin.js');
$document->addStyleSheet(JURI::base() . 'modules/mod_mp_jigsaw/css/jigsaw-plugin.css');

$upload_location = 'images';
$uriBase = JURI::base();
$urlPath = JURI::base().'modules/mod_mp_jigsaw/';
$mod_folder = 'modules/mod_mp_jigsaw/';
$flash = $urlPath.'jigsaw-plugin2.swf';
$closebuton = $urlPath.'img/close_button.png';

$default_gallery = 'modules/mod_mp_jigsaw/gallery';
$default_resize = $upload_location;

$size = ($params->get( 'size' )!='') ? $params->get( 'size' ) : '460';
if (!mod_mp_jigsaw_testRange($size, 100, 1000)) $size = 400;
$pieces = ($params->get( 'pieces' )!='') ? $params->get( 'pieces' ) : '4';
$rotation = ($params->get( 'rotation' )!='') ? '1' : '0';
$preview = ($params->get( 'preview' )!='') ? '1' : '0';
$bgcolor = ($params->get( 'bgcolor' )!='') ? $params->get( 'bgcolor' ) : '#ffffff';
$bgcolor = str_replace('#', '', $bgcolor);
if (!preg_match('/^[a-f0-9]{6}$/i', $bgcolor)) $bgcolor = 'FFFFFF';        
$myimage = ($params->get( 'myimage' )!='') ? $params->get( 'myimage' ) : '';
$gallery = ($params->get( 'gallery' )!='') ? $params->get( 'gallery' ) : $default_gallery;
$resizefolder = ($params->get( 'resizefolder' )!='') ? $params->get( 'resizefolder' ) : $default_resize;
if (!is_dir($resizefolder)) $resizefolder = $default_resize;    
$doresize = ($params->get( 'doresize' )!='') ? '1' : '0';

$sitePath = JPATH_SITE;
$siteUrl  = JURI::root(true);

$galleryPath = JURI::base() . $gallery;
$galleryFolder = JPATH_SITE . DS . $gallery;
$resizepath = JURI::base().$resizefolder;
$resizefolder = $sitePath.DS.str_replace('/',DS,$resizefolder);
$isurl = false;

if ($pieces == '3') $image = 'slide-3x3.jpg';
if ($pieces == '4') $image = 'slide-4x4.jpg';
if ($pieces == '5') $image = 'slide-5x5.jpg';
        
$rndfile = mod_mp_jigsaw_rndfile($galleryFolder);
if (!$rndfile || $rndfile == '') $rndfile = $image;

$mySlider = new jigsaw_mp_slider();
if (!$myimage || $myimage == '')
    $myimage = $galleryPath.'/'.$rndfile;
else {
    //check wether its an url or path
    //check wether we deal with an url or an local-path
    $urlar = parse_url($myimage);
    if ($urlar['host']=='') {
        $myimage = mod_mp_jigsaw_clearpath($myimage); 
        $isurl = false;
    }else{
        $isurl = true;
    }  
}
if ($doresize==1) {
    if ($isurl)
        $myPic = $mySlider->getResizedImage($myimage, $resizefolder, $resizepath);
    else
        $myPic = $mySlider->getResizedImage(mod_mp_jigsaw_clearpath($myimage), $resizefolder, $resizepath);
    if (!$myPic) 
        return("Error: Could not load/resize the image, please check your upload permission or switch off the resize option.");
}
else
    $myPic = $myimage;

$width = $size;
$height = intval($size / 720 * 520);

$output = "<div id='jigsaw_flashObject' style='z-index:0;width:".$size."px'>";
$output .= "<object id='myJigsawFlash' classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000'";
$output .= " codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0'";
$output .= " width='".$width."' height='".$height."' align='middle'>\r";  
$output .= "<param name='allowScriptAccess' value='sameDomain' />\r";
$output .= "<param name='allowFullScreen' value='false' />\r";
$output .= "<param name='movie' value='".$flash."' />\r";
$output .= "<param name='flashvars' value='myThumbnail=".$preview."&myRot=" . $rotation . "&myPieces=".$pieces."&myPic=" . $myPic . "' />\r";
$output .= "<param name='quality' value='high' />\r";
$output .= "<param name='menu' value='false' />\r";
$output .= "<param name='bgcolor' value='#".$bgcolor."' />\r";
$output .= "<param name='wmode' value='transparent' />";
$output .= "<embed src='".$flash."' flashvars='myThumbnail=".$preview."&myRot=" . $rotation . "&myPieces=".$pieces."&myPic=" . $myPic . "' quality='high' bgcolor='#".$bgcolor."'  swLiveConnect='true' ";
$output .= "    width='".$width."' height='".$height."' name='jigsaw' menu='false' align='middle' allowScriptAccess='sameDomain' ";
$output .= "    allowFullScreen='false' type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/go/getflashplayer' />\r";
$output .= "</object>\r";
$output .= "<div style='width:".$width."px;text-align: right'>\r";
$output .= "<a href='http://mypuzzle.org/jigsaw/'>Jigsaw Puzzles</a></div>";
$output .= "</div>";
//add diff for the image gallery
$output .= "<div id='jigsaw_gallery' style='z-index:1;'>\r";
$output .= "    <span class='jigsaw_button bClose'><img src='".$closebuton."' /></span>\r";
$output .= "    <div id='jigsaw_image_container' class='scroll-pane'></div>\r";
$output .= "</div>\r";
//add diff for the image wrapper template
$output .= "<div id='jigsaw_imgWrapTemplate' class='jigsaw_imageWrapper' style='visibility:hidden;'>\r"; //
$output .= "    <img src='' class='jigsaw_pickImage'/>\r";
$output .= "    <div class='jigsaw_imageTitle'>Turtle</div>\r";
$output .= "</div>\r";
//add invisible variables for jquery access
$output .= "<div id='flashvar_preview_jigsaw' style='visibility:hidden;position:absolute'>".$preview."</div>\r";
$output .= "<div id='flashvar_rotation_jigsaw' style='visibility:hidden;position:absolute'>".$rotation."</div>\r";
$output .= "<div id='flashvar_pieces_jigsaw' style='visibility:hidden;position:absolute'>".$pieces."</div>\r";
$output .= "<div id='flashvar_startPicture_jigsaw' style='visibility:hidden;position:absolute'>".$myPic."</div>\r";
$output .= "<div id='flashvar_width_jigsaw' style='visibility:hidden;position:absolute'>".$width."</div>\r";
$output .= "<div id='flashvar_height_jigsaw' style='visibility:hidden;position:absolute'>".$height."</div>\r";
$output .= "<div id='flashvar_bgcolor_jigsaw' style='visibility:hidden;position:absolute'>".$bgcolor."</div>\r";
$output .= "<div id='var_galleryPath_jigsaw' style='visibility:hidden;position:absolute'>".$galleryPath."</div>\r";
$output .= "<div id='var_galleryFolder_jigsaw' style='visibility:hidden;position:absolute'>".$galleryFolder."</div>\r";
$output .= "<div id='var_uribase_jigsaw' style='visibility:hidden;position:absolute'>".$uriBase."</div>\r";
$output .= "<div id='var_resizeFolder_jigsaw' style='visibility:hidden;position:absolute'>".$resizefolder."</div>\r";
$output .= "<div id='var_resizePath_jigsaw' style='visibility:hidden;position:absolute'>".$resizepath."</div>\r";
$output .= "<div id='var_plugin_jigsaw' style='visibility:hidden;position:absolute'>".$path."/</div>\r";
$output .= "<div id='var_flash_jigsaw' style='visibility:hidden;position:absolute'>".$flash."</div>\r";
$output .= "<div id='var_doresize_jigsaw' style='visibility:hidden;position:absolute'>".$doresize."</div>\r";
$output .= "<script language='javascript'>\r";
$output .= "function jigsaw_openGallery() {jigsaw_showGallery();}\r";
$output .= "</script>\r";
//echo "Test";
echo $output;


function mod_mp_jigsaw_rndfile($dir) {
    
    if (!is_dir($dir)) return(null);
    if( $checkDir = opendir($dir) ) {
        $cFile = 0;
        // check all files in $dir, add to array listFile
        $preg = "/.(jpg|gif|png|jpeg)/i";
        while( $file = readdir($checkDir) ) {
            if(preg_match($preg, $file)) {
                if( !is_dir($dir . "/" . $file) ) {
                    $listFile[$cFile] = $file;
                    $cFile++;
                }
            }
        }
    }
    $num = rand(0, count($listFile)-1 );
    return($listFile[$num]);
}
function mod_mp_jigsaw_clearpath($inputpath) {
    if (substr($inputpath, 0, 1)=='/') $inputpath = substr($inputpath, 1);
    if (substr($inputpath, strlen($inputpath)-1, 1)=='/') $inputpath = substr($inputpath, 0, strlen($inputpath)-1);
    return($inputpath);
}
function mod_mp_jigsaw_testRange($int,$min,$max) {     
    return ($int>=$min && $int<=$max);
}
?>