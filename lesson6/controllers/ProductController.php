<?php
namespace App\controllers;

use App\system\engine\Controller;
use App\models\repositories\Good;

class ProductController extends Controller
{
    protected $data = [];

    public function index($request)
    {
        if($request->getGet()['id']) {
            $data['title'] = 'Woman collection';
            $data['product'] = (new Good())->getOne((int)$request->getGet()['id']);
            $data['header'] = $this->template('header');
            $data['breadcrumbs'] = $this->template('breadcrumbs', ['title' => 'Woman collection']);
            $data['footer'] = $this->template('footer');

            $this->render('product', $data);
        } else {
            $this->response->redirect('error');
        }
    }
}