<?php

// autoload_psr4.php @generated by Composer

$vendorDir = dirname(dirname(__FILE__));
$baseDir = dirname($vendorDir);

return array(
    'Twig\\' => array($vendorDir . '/twig/twig/src'),
    'Symfony\\Polyfill\\Mbstring\\' => array($vendorDir . '/symfony/polyfill-mbstring'),
    'Symfony\\Polyfill\\Ctype\\' => array($vendorDir . '/symfony/polyfill-ctype'),
    'App\\traits\\' => array($baseDir . '/traits'),
    'App\\services\\' => array($baseDir . '/services'),
    'App\\models\\' => array($baseDir . '/models'),
    'App\\engine\\' => array($baseDir . '/engine'),
    'App\\controllers\\' => array($baseDir . '/controllers'),
);