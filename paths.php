<?php
//SITE_ROOT
$path = $_SERVER['DOCUMENT_ROOT'].'/rot';
define('SITE_ROOT', $path);

//SITE_PATH
define('SITE_PATH', 'http://'.$_SERVER['HTTP_HOST'].'/rot');

//CSS
define('CSS_PATH', SITE_PATH . '/view/css/');

//LOG
define('LOG_DIR', SITE_ROOT.'/classes/log.class.singleton.php');
define('USER_LOG_DIR', SITE_ROOT . '/log/user/Site_User_errors.log');
define('GENERAL_LOG_DIR', SITE_ROOT . '/log/general/Site_General_errors.log');

//PRODUCTION
define('PRODUCTION', true);

//MODEL
define('MODEL_PATH',SITE_ROOT.'/model/');
//VIEW
define('VIEW_PATH_INC',SITE_ROOT.'/view/inc/');
define('VIEW_PATH_INC_ERROR',SITE_ROOT.'/view/inc/templates_error/');
//MODULES
define('MODULES_PATH',SITE_ROOT.'/modules/');

//RESOURCES
define('RESOURCES',SITE_ROOT.'/resources/');
//MEDIA
define('MEDIA_PATH',SITE_ROOT.'/media/');
//UTILS
define('UTILS',SITE_ROOT.'/utils/');

//MODULE USERS

define('FUNCTIONS_USERS', SITE_ROOT.'/modules/users/utils/');
define('MODEL_PATH_USERS',SITE_ROOT.'/modules/users/model/');
define('DAO_USERS',SITE_ROOT.'/modules/users/model/DAO/');
define('BLL_USERS',SITE_ROOT.'/modules/users/model/BLL/');
define('MODEL_USERS',SITE_ROOT.'/modules/users/model/model/');
define('USERS_JS_PATH', SITE_PATH.'/modules/users/view/js/');
define('USERS_CSS_PATH',SITE_PATH.'/modules/users/view/css/');
