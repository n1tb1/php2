<?php

include dirname(__DIR__) . '/services/Autoload.php';

spl_autoload_register(
    [new \App\services\Autoload(), 'loadClass']
);

$user = new \App\models\User(new \App\services\BD());

$user->getOne(12);

$product = new \App\models\Product(new \App\services\BD());

$product->getAll();

var_dump($product);


