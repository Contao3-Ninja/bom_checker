<?php if (!defined('TL_ROOT')) die('You can not access this file directly!');

/**
 * Contao Open Source CMS
 * Copyright (C) 2005-2012 Leo Feyer
 *
 * @link http://www.contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 *
 * PHP version 5
 * @copyright  Glen Langer 2011 
 * @author     BugBuster 
 * @package    BomChecker 
 * @license    LGPL 
 */

/**
 * Back end module
 */
$GLOBALS['BE_MOD']['devtools']['bom_checker'] = array
(
	'callback'   => 'BomChecker',
	'icon'       => 'system/modules/bom_checker/html/bomcheck.png',
);

?>