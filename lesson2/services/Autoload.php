<?php
namespace App\services;

class Autoload
{
    public function loadClass($className)
    {
        $className = str_replace('\\', '/', str_replace('App\\', '', $className));
        $dir = dirname(__DIR__);
        $file = $dir . '/' . $className . ".php";
        if (file_exists($file)) {
            include_once $file;
        }
    }
}