<?php
namespace App\controllers;

use App\system\engine\Controller;

class ErrorController extends Controller
{
    protected $data = [];

    public function index()
    {
        $data['header'] = $this->template('header');
        $data['footer'] = $this->template('footer');

        $this->render('error', $data);
    }
}