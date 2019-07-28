<?php
namespace App\controllers;

use App\engine\Controller;
use App\models\Good;

class CommonController extends Controller

{
    protected $data = [];

    public function index()
    {
        $data['header'] = $this->template('header');
        $data['footer'] = $this->template('footer');
        $data['products'] = Good::getAll();

        $this->render('main', $data);
    }
}