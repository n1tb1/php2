<?php
namespace App\controllers;

use App\system\engine\Controller;

class ErrorController extends Controller
{
    protected $data = [];

    public function index()
    {
        $data['header'] = (new HeaderController($this->registry))->index();
        $data['footer'] = (new FooterController($this->registry))->index();

        echo $this->renderer->template('error', $data);
    }
}