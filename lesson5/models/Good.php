<?php
namespace App\models;

use App\engine\Model;

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