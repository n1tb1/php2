<?php
namespace App\controllers;

use App\system\engine\Controller;

class HeaderController extends Controller

{
    public function index()
    {
        $cart = (new CartController($this->registry))->info();
        $user = $this->user->userData;

        return $this->renderer->template('header', ['cart' => $cart, 'site' => SITE_HOST, 'user' => $user]);
    }
}