<?php
namespace App\models;

use \App\engine\Model;

class User extends Model
{
    public $id;
    public $name;
    public $email;
    public $password;

    protected function getTableName()
    {
        return 'users';
    }


}
