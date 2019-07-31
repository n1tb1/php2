<?php
namespace App\system\engine;

class Response
{
    public function redirect($to)
    {
        header("Location: {$to}");
    }
}