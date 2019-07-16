<?php
namespace App\models;

class User extends Model
{
    private $user_id;
    private $name;
    private $lastname;
    private $email;
    private $telephone;
    private $password;
    private $status;

    public function __construct(\App\services\BD $bd, array $data = [])
    {
        parent::__construct($bd);

        if ($data) {
            $this->userId($data['user_id']);
            $this->name($data['name']);
            $this->lastname($data['lastname']);
            $this->email($data['email']);
            $this->telephone($data['telephone']);
            $this->password($data['password']);
            $this->status($data['status']);
        }
    }

    public function userId($value = '')
    {
        if ($value) {
            $this->user_id = $value;
        } else {
            return $this->user_id;
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

    public function lastname($value = '')
    {
        if ($value) {
            $this->lastname = $value;
        } else {
            return $this->lastname;
        }
    }

    public function email($value = '')
    {
        if ($value) {
            $this->email = $value;
        } else {
            return $this->email;
        }
    }

    public function telephone($value = '')
    {
        if ($value) {
            $this->telephone = $value;
        } else {
            return $this->telephone;
        }
    }

    public function password($value = '')
    {
        if ($value) {
            $this->password = $value;
        } else {
            return $this->password;
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

    public function addUser(array $data) {
        //
    }

    public function getUser(int $id) {
        //
    }

    public function getUsers() {
        //
    }

    public function editUser(array $data) {
        //
    }

    public function deleteUser(int $id) {
        //
    }

    protected function getTableName()
    {
        return 'users';
    }

}
