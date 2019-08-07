<?php
namespace App\controllers;

use App\system\engine\Controller;
use App\models\repositories\Good;

class CommonController extends Controller

{
    protected $data = [];

    public function index()
    {
        $data['header'] = (new HeaderController($this->registry))->index();
        $data['footer'] = (new FooterController($this->registry))->index();
        $data['products'] = (new Good)->getAll();

        echo $this->renderer->template('main', $data);
    }
}