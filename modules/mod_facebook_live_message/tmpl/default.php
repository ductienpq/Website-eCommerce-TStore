<?php

/**

 * @package     site.socialwidgets

 * @subpackage  mod_facebook_live_message

 *

 * @copyright   All rights reserved by Facebook Live Message.

 * @license     GNU General Public License version 2 or later

 */


defined( '_JEXEC' ) or die;

?>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.4&appId=262562957268319";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


    <div id="mod_facebook_live_message">
      <div class="fb-page" data-href="<?php echo $params->get('facebook_url');?>" 
          data-tabs="messages" data-small-header="<?php echo $params->get('show_header');?>" 
          data-adapt-container-width="true" data-hide-cover="<?php echo $params->get('hide');?>"
          data-show-facepile="<?php echo $params->get('face');?>">
         <div class="fb-xfbml-parse-ignore">
            <blockquote cite="<?php echo $params->get('facebook_url');?>">
              <a href="<?php echo $params->get('facebook_url');?>"><?php echo $params->get('facebook_name');?></a>
            </blockquote>
         </div>
       </div>
    </div>