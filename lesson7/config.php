<?php

//DIRS
define("DIR_ROOT", "/geekbrains/php2/php2/lesson7/");
define("DIR_CONTROLLERS", __DIR__."/controllers/");
define("DIR_MODELS", __DIR__."/models/");
define("DIR_VIEWS", __DIR__."/views/");
define("DIR_IMAGES", __DIR__."/img/");

//LINKS
define('SITE_HOST', "http://" . $_SERVER['HTTP_HOST'] . DIR_ROOT);
define('SITE_IMG', "http://" . $_SERVER['HTTP_HOST'] . DIR_ROOT . "img/");

//CONFIG
define("CONFIG_TEMPLATE", "twig");



//DATABASE
define("DB_HOST", "localhost");
define("DB_DRIVER", "mysql");
define("DB_USER", "good");
define("DB_PASSWORD", "12345");
define("DB_NAME", "geek");
define("DB_CHARSET", "UTF8");




