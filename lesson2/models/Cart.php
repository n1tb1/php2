<?php
namespace App\models;

class Cart extends Model
{
    protected $cart_id;
    protected $products;
    protected $quantity;
    protected $total;

    public function cartId($value = '')
    {
        if ($value) {
            $this->cart_id = $value;
        } else {
            return $this->cart_id;
        }
    }

    public function products($value = '')
    {
        if ($value) {
            $this->products = $value;
        } else {
            return $this->products;
        }
    }

    public function quantity($value = '')
    {
        if ($value) {
            $this->quantity = $value;
        } else {
            return $this->quantity;
        }
    }

    public function total($value = '')
    {
        if ($value) {
            $this->total = $value;
        } else {
            return $this->total;
        }
    }


    public function addCart(array $data) {
        //
    }

    public function getCart(int $id) {
        //
    }

    public function editCart(array $data) {
        //
    }

    public function deleteCart(int $id) {
        //
    }

    protected function getTableName()
    {
        return 'cart';
    }

}
