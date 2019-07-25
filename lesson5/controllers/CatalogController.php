<?php
namespace App\controllers;

use App\engine\Controller;
use App\models\Good;

class CatalogController extends Controller

{
    protected $data = [];

    public function index()
    {
        $data['header'] = $this->template('header');
        $data['breadcrumbs'] = $this->template('breadcrumbs');
        $data['footer'] = $this->template('footer');
        $data['products'] = Good::getAll();

        $this->render('catalog', $data);
    }
}