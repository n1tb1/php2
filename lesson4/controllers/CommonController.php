<?php
namespace App\controllers;

use App\traits\Template;
use App\models\Good;

class CommonController

{
    use Template;
    protected $data = [];

    public function index()
    {
        $data['header'] = $this->template('header');
        $data['footer'] = $this->template('footer');
        $data['products'] = Good::getAll();

        $this->render('main', $data);
    }
}