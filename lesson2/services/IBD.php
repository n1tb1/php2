<?php
namespace App\services;

interface IBD
{
    public function find(string $sql);
    public function findAll(string $sql);
    public function update(string $sql);
    public function delete(string $sql);
    public function lastId(string $sql);
    public function rowsAffected(string $sql);
}