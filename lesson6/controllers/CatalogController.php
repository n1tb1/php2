<?php
namespace App\controllers;

use App\system\engine\Controller;
use App\models\repositories\Good;
use App\system\engine\renders\TwigRenderServices;


class CatalogController extends Controller

{
    protected $data = [];

    public function index($request)
    {
        $cart = (new CartController(new TwigRenderServices()))->info($request);
        $data['header'] = $this->template('header', ['cart' => $cart]);
        $data['breadcrumbs'] = $this->template('breadcrumbs');
        $data['footer'] = $this->template('footer');
        $data['products'] = (new Good())->getAll();

        $this->render('catalog', $data);
    }
}