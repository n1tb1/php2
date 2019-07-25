<?php
namespace App\controllers;

use App\traits\Template;

class ErrorController
{
    use Template;
    protected $data = [];

    public function index()
    {
        $data['header'] = $this->template('header');
        $data['footer'] = $this->template('footer');

        $this->render('error', $data);
    }
}