<?php
namespace App\models\entities;

use \App\system\engine\Entity;

/**
 * Class Good
 * @package App\models\entities\
 */
class Good extends Entity
{
    public $id;
    public $img;
    public $price;
    public $name;
    public $description;
    public $status;

}