<?php
namespace App\system\engine;

class Response
{
    public function redirect($to)
    {
        $to = SITE_HOST . $to;
        header("Location: {$to}");
    }
}