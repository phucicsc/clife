<?php

if ($_SERVER['SERVER_NAME'] === '192.168.0.68') {
	// DIR HOST
	define('DIR_HOST', '/var/www/clife/');
	// HTTP
	define('HTTP_SERVER', 'http://192.168.0.68/clife/');
	// HTTPS
	define('HTTPS_SERVER', 'http://192.168.0.68/clife/');

	// DB
	define('DB_USERNAME', 'root');
	define('DB_PASSWORD', 'admin123@');
	define('DB_DATABASE', 'clife');
	
} else {
	// DIR HOST
	define('DIR_HOST', '/home/cosmosco/public_html/member/');
	// HTTP
	define('HTTP_SERVER', 'http://member.changelifeeasy.help/');
	// HTTPS
	define('HTTPS_SERVER', 'http://member.changelifeeasy.help/');

	// DB
	define('DB_USERNAME', 'cosmosco_clife');
	define('DB_PASSWORD', 'u=f8W5tgMfbV');
	define('DB_DATABASE', 'cosmosco_clife');

}

// DIR
define('DIR_APPLICATION', DIR_HOST . 'catalog/');
define('DIR_SYSTEM', DIR_HOST . 'system/');
define('DIR_LANGUAGE', DIR_HOST . 'catalog/language/');
define('DIR_TEMPLATE', DIR_HOST . 'catalog/view/theme/');
define('DIR_CONFIG', DIR_HOST . 'system/config/');
define('DIR_IMAGE', DIR_HOST . 'image/');
define('DIR_CACHE', DIR_HOST . 'system/cache/');
define('DIR_DOWNLOAD', DIR_HOST . 'system/download/');
define('DIR_UPLOAD', DIR_HOST . 'system/upload/');
define('DIR_MODIFICATION', DIR_HOST . 'system/modification/');
define('DIR_LOGS', DIR_HOST . 'system/logs/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_PORT', '3306');
define('DB_PREFIX', 'sm_');
