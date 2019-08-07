<?php

namespace App\controllers;

use App\system\engine\Controller;
use App\models\repositories\Good;
use App\models\repositories\Cart;

class CartController extends Controller
{
    public function index()
    {
        $data['cart'] = $this->info();
        $data['site'] = SITE_HOST;
        $data['header'] = (new HeaderController($this->registry))->index();
        $data['footer'] = (new FooterController($this->registry))->index();
        $data['breadcrumbs'] = $this->renderer->template('breadcrumbs');

        echo $this->renderer->template('cart', $data);
    }

    public function getRepository() {
        return new Cart();
    }

    public function info()
    {
        $cart = $this->getRepository()->getCartBySessionId($this->request->cookie('PHPSESSID'));
        if($cart) {
            $cart->contents = json_decode($cart->contents, 1);
        }
        return $cart;
    }

    public function addProduct()
    {
        $cartRepository = $this->getRepository();
        $session_id = $this->request->cookie('PHPSESSID');

        $cart = $cartRepository->getCartBySessionId($session_id) ?
            $cartRepository->getCartBySessionId($session_id) :
            $cartRepository->getEntity();

        $products = json_decode($cart->contents, 1);

        $product = (new Good())->getOne($this->request->get('product_id'));

        if ($product && $products) {
            $find = 0;

            foreach ($products as $key => $item) {
                if ($key == $product->id) {
                    $find = $key;
                    break;
                }
            }

            if ($find) {
                $products[$find]['quantity'] += 1;
            } else {
                $products[$product->id] = $this->getCartProduct($product, 1);
            }
        } else {
            $products[$product->id] = $this->getCartProduct($product, 1);
        }

        $cart->contents = json_encode($products);
        $cart->session_id = $session_id;
        $cart->user_id = $this->user->getId();
        $cart->count_goods += 1;
        $cart->amount += $product->price;
        $cartRepository->save($cart);

        echo json_encode($this->info());
    }


    public function deleteProduct()
    {
        $session_id = $this->request->cookie('PHPSESSID');
        $cart = $this->getRepository()->getCartBySessionId($session_id);

        if ($cart) {
            $products = json_decode($cart->contents, 1);

            $product = (new Good())->getOne($this->request->get('product_id'));

            if ($product && $products) {
                $find = 0;

                foreach ($products as $key => $item) {
                    if ($key == $product->id) {
                        $find = $key;
                        break;
                    }
                }

                if ($find) {
                    if ($products[$find]['quantity'] != 1) {
                        $products[$find]['quantity'] -= 1;
                    } else {
                        unset($products[$find]);
                    }

                    $cart->count_goods -= 1;
                    $cart->amount -= $product->price;
                    $cart->session_id = $session_id;
                    $cart->user_id = $this->user->getId();
                    $cart->contents = json_encode($products);
                    $this->getRepository()->save($cart);

                    echo json_encode($this->info());
                }
            }
        }
    }


    public function clear()
    {
        $cart = $this->getRepository()->getCartBySessionId($this->request->cookie('PHPSESSID'));
        $cart->count_goods = 0;
        $cart->amount = 0;
        $cart->contents = json_encode([]);
        $this->getRepository()->save($cart);
    }

    public function getCartProduct($product, $quantity)
    {
        $cartProduct = new \stdClass();
        $cartProduct->price = $product->price;
        $cartProduct->product_name = $product->name;
        $cartProduct->quantity = $quantity;
        $cartProduct->img = $product->img;
        $cartProduct->product_id = $product->id;

        return $cartProduct;
    }
}