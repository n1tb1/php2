<?php

include 'services/Autoload.php';
include 'config.php';

spl_autoload_register(
    [new Autoload(),
        'loadClass']
);


$controllerName = $_GET['controller'] ?? 'common';
$actionName = $_GET['action'] ?? 'index';

$controllerClass = 'App\\controllers\\' . ucfirst($controllerName) . 'Controller';

if (class_exists($controllerClass)) {
    $controller = new $controllerClass();
    $controller->{$actionName}();
} else {
    $controller = new App\controllers\ErrorController();
    $controller->index();
}







