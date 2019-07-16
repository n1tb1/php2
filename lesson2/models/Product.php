<?php
namespace App\models;

class Product extends Model
{
    public $product_id;
    public $price;
    public $name;
    public $description;
    public $image;
    public $status;
    public $quantity;
    public $discount;

    public function productId($value = '')
    {
        if ($value) {
            $this->product_id = $value;
        } else {
            return $this->product_id;
        }
    }

    public function price($value = '')
    {
        if ($value) {
            $this->price = $value;
        } else {
            return $this->price;
        }
    }

    public function name($value = '')
    {
        if ($value) {
            $this->name = $value;
        } else {
            return $this->name;
        }
    }

    public function description($value = '')
    {
        if ($value) {
            $this->description = $value;
        } else {
            return $this->description;
        }
    }

    public function image($value = '')
    {
        if ($value) {
            $this->image = $value;
        } else {
            return $this->image;
        }
    }

    public function status($value = '')
    {
        if ($value) {
            $this->status = $value;
        } else {
            return $this->status;
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

    public function discount($value = '')
    {
        if ($value) {
            $this->discount = $value;
        } else {
            return $this->discount;
        }
    }

    public function addProduct(array $data) {
        //
    }

    public function getProduct(int $id) {
        //
    }

    public function getProducts() {
        //
    }

    public function editProduct(array $data) {
        //
    }

    public function deleteProduct(int $id) {
        //
    }

    protected function getTableName()
    {
        return 'goods';
    }
}