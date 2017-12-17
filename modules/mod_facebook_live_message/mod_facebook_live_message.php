<?php

/**

 * @package     site.socialwidgets

 * @subpackage  mod_facebook_live_message

 *

 * @copyright   All rights reserved by Facebook Live Message.

 * @license     GNU General Public License version 2 or later

 */

defined('_JEXEC') or die;



$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));

require JModuleHelper::getLayoutPath('mod_facebook_live_message', $params->get('layout', 'default'));