<?php
namespace App\controllers;

use App\system\engine\Controller;
use App\models\repositories\Good;


class CatalogController extends Controller

{
    public function index()
    {
        $data['header'] = (new HeaderController($this->registry))->index();
        $data['footer'] = (new FooterController($this->registry))->index();
        $data['breadcrumbs'] = $this->renderer->template('breadcrumbs');
        $data['products'] = (new Good())->getAll();

        echo $this->renderer->template('catalog', $data);
    }
}