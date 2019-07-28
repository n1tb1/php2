<?php
use  \App\models\User;

include dirname(__DIR__) . '/services/Autoload.php';

spl_autoload_register(
    [new Autoload(),
        'loadClass']
);

$user = new User();

//$user->name = 'Vasya1';
//$user->email = 'test@test.ru1';
//$user->password = '2222222';
//$user->save();

//$user->name = 'Vasya333';
//$user->save();

//$user->delete(11);







