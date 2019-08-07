<?php
namespace App\models\entities;

use \App\system\engine\Entity;

/**
 * Class Order
 * @package App\models\entities\
 */
class Order extends Entity
{
    public $id;
    public $user_id;
    public $products;
    public $name;
    public $lastname;
    public $email;
    public $telephone;
    public $status;
}