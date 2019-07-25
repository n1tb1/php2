<?php
use App\engine\renders\TmplRenderServices;
use App\engine\renders\TwigRenderServices;


include 'vendor/autoload.php';
include 'config.php';

$controllerName = $_GET['controller'] ?? 'common';
$actionName = $_GET['action'] ?? 'index';

$controllerClass = 'App\\controllers\\' . ucfirst($controllerName) . 'Controller';

if (class_exists($controllerClass)) {
    $controller = new $controllerClass(new TwigRenderServices());
    $controller->{$actionName}();
} else {
    $controller = new App\controllers\ErrorController();
    $controller->index();
}







