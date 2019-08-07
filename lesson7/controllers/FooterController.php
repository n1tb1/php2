<?php
namespace App\controllers;

use App\system\engine\Controller;

class FooterController extends Controller
{
    public function index()
    {
        return $this->renderer->template('footer', ['site' => SITE_HOST]);
    }
}