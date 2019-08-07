<?php

namespace App\controllers;

use App\system\engine\Controller;
use App\models\repositories\Order;


class CheckoutController extends Controller
{
    protected $errors = [];

    public function index()
    {
        if($_SERVER['REQUEST_METHOD'] == 'POST' && $this->validate()) {
            $this->checkout();
        }

        if($this->request->post('name')) {
            $data['name'] = $this->request->post('name');
        } elseif ($this->user->getName()) {
            $data['name'] = $this->user->getName();
        }
        if($this->request->post('lastname')) {
            $data['lastname'] = $this->request->post('lastname');
        } elseif ($this->user->getLastname()) {
            $data['lastname'] = $this->user->getLastname();
        }
        if($this->request->post('email')) {
            $data['email'] = $this->request->post('email');
        } elseif ($this->user->getEmail()) {
            $data['email'] = $this->user->getEmail();
        }
        if($this->request->post('telephone')) {
            $data['telephone'] = $this->request->post('telephone');
        } elseif ($this->user->getTelephone()) {
            $data['telephone'] = $this->user->getTelephone();
        }

        $data['errors'] = $this->errors;

        $data['site'] = SITE_HOST;
        $data['header'] = (new HeaderController($this->registry))->index();
        $data['footer'] = (new FooterController($this->registry))->index();
        $data['breadcrumbs'] = $this->renderer->template('breadcrumbs');

        echo $this->renderer->template('checkout', $data);
    }

    public function getRepository() {
        return new Order();
    }

    protected function checkout()
    {
        $orderRepository = $this->getRepository();
        $orderEntity = $orderRepository->getEntity();

        $cartController = $this->cart;
        $cartEntity = $cartController->getRepository()->getCartBySessionId($this->request->cookie('PHPSESSID'));
        $products = $cartEntity->contents;

        $orderEntity->user_id = $this->user->getId();
        $orderEntity->name = $this->request->post('name');
        $orderEntity->lastname = $this->request->post('lastname');
        $orderEntity->email = $this->request->post('email');
        $orderEntity->telephone = $this->request->post('telephone');
        $orderEntity->products = json_encode($products);

        $orderRepository->save($orderEntity);

        $cartController->clear();

        $this->response->redirect('');
    }

    protected function validate() {
        $data = $this->request->post();

        if(empty($data['name'])) {
            $this->errors['name'] = 'Please input name';
        }

        if(empty($data['lastname'])) {
            $this->errors['lastname'] = 'Please input lastname';
        }

        if(empty($data['email'])) {
            $this->errors['email'] = 'Please input email';
        }

        if(empty($data['telephone'])) {
            $this->errors['telephone'] = 'Please input telephone';
        }

        if(!$this->user->getId()) {
            $this->errors['error'] = 'Please log in to order';
        }

        return !$this->errors;
    }
}