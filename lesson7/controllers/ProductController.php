<?php
namespace App\controllers;

use App\system\engine\Controller;
use App\models\repositories\Good;

class ProductController extends Controller
{
    protected $data = [];

    public function index()
    {
        $product_id = $this->request->get('id');
        $product = (new Good())->getOne((int)$product_id);

        if($product) {
            $data['title'] = 'Woman collection';
            $data['product'] = $product;
            $data['header'] = (new HeaderController($this->registry))->index();
            $data['footer'] = (new FooterController($this->registry))->index();
            $data['breadcrumbs'] = $this->renderer->template('breadcrumbs', ['title' => 'Woman collection']);

            echo $this->renderer->template('product', $data);
        } else {
            $this->response->redirect('error');
        }
    }
}