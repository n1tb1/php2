<?php
namespace App\models\entities;

use \App\system\engine\Entity;

/**
 * Class User
 * @package App\models\entities\
 */
class User extends Entity
{
    public $id;
    public $name;
    public $email;
    public $password;
}
