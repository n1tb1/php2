<?php
use \App\system\engine\Registry;
use \App\system\engine\Request;
use \App\system\engine\Response;
use \App\system\engine\Router;
use \App\controllers\UserController;
use \App\controllers\CartController;

include 'vendor/autoload.php';
include 'config.php';

$registry = new Registry();

$request = new Request();
$registry->set('request', $request);
$registry->set('response', new Response());
$registry->set('user', new UserController($registry));
$registry->set('cart', new CartController($registry));




$router = new Router($registry);
$router->execute();








