<?php

namespace App\services;

class BD implements IBD
{
    public function find(string $sql)
    {
        echo $sql;
    }

    public function findAll(string $sql)
    {
        return $sql;
    }

    public function update(string $sql)
    {
        return $sql;
    }

    public function delete(string $sql)
    {
        return $sql;
    }

    public function lastId(string $sql)
    {
        return $sql;
    }

    public function rowsAffected(string $sql)
    {
        return $sql;
    }


}