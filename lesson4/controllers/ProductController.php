<?php
namespace App\controllers;

use App\traits\Template;
use App\models\Good;

class ProductController

{
    use Template;
    protected $data = [];

    public function index()
    {
        $id = $_GET['id'] ?? '';

        if($id) {
            $data['title'] = 'Woman collection';
            $data['product'] = Good::getOne((int)$id);

            $data['header'] = $this->template('header');
            $data['breadcrumbs'] = $this->template('breadcrumbs');
            $data['footer'] = $this->template('footer');

            $this->render('product', $data);
        }
    }
}