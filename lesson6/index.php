<?php
use App\system\engine\renders\TwigRenderServices;
use App\system\engine\Request;

include 'vendor/autoload.php';
include 'config.php';

$request = new Request();

$controllerClass = 'App\\controllers\\' . ucfirst($request->getControllerName()) . 'Controller';

if (class_exists($controllerClass)) {
    $controller = new $controllerClass(new TwigRenderServices());
    $controller->{$request->getActionName()}($request);
} else {
    $controller = new App\controllers\ErrorController(new TwigRenderServices());
    $controller->index($request);
}







