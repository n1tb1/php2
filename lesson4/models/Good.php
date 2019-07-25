<?php
namespace App\models;

class Good extends Model
{
    public $id;
    public $img;
    public $price;
    public $name;
    public $description;
    //public $status;

    protected static function getTableName()
    {
        return 'products';
    }
}