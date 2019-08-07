<?php
namespace App\system\services;

interface IBD
{
    public function find(string $sql, array $params = []);
    public function findAll(string $sql, array $params = []);
}