<?php
namespace App\models\entities;

use \App\system\engine\Entity;

/**
 * Class Cart
 * @package App\models\entities\
 */
class Cart extends Entity
{
    public $id;
    public $user_id;
    public $session_id;
    public $contents;
    public $count_goods;
    public $amount;
}