<?php

namespace App\controllers;

use App\models\repositories\Good;
use App\system\engine\Controller;
use App\models\repositories\Cart;

class CartController extends Controller
{
    protected $data = [];

    public function index($request)
    {
        $data['cart'] = $this->info($request);

        $data['header'] = $this->template('header', ['cart' => $data['cart']]);
        $data['breadcrumbs'] = $this->template('breadcrumbs', ['title' => 'Cart']);
        $data['footer'] = $this->template('footer');

        $this->render('cart', $data);
    }

    public function info($request)
    {
        $cart = (new Cart())->getOne(1);
        $cart->contents = json_decode($cart->contents, 1);
        return $cart;
    }

    public function addProduct($request)
    {
        $cartRepository = new Cart();
        $cart = $cartRepository->getOne(1);
        $products = json_decode($cart->contents, 1);

        $product = (new Good())->getOne($request->getGet()['product_id']);

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
        $cart->count_goods += 1;
        $cart->amount += $product->price;
        $cartRepository->save($cart);

        echo json_encode($this->info($request));
    }


    public function deleteProduct($request)
    {
        $cartRepository = new Cart();
        $cart = $cartRepository->getOne(1);
        $products = json_decode($cart->contents, 1);

        $product = (new Good())->getOne($request->getGet()['product_id']);

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
                $cart->contents = json_encode($products);
                $cartRepository->save($cart);

                echo json_encode($this->info($request));
            }
        }
    }


    public function clear($request)
    {
        $cartRepository = new Cart();
        $cart = $cartRepository->getOne(1);
        $cart->count_goods = 0;
        $cart->amount = 0;
        $cart->contents = [];
        $cartRepository->save($cart);

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