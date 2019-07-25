<?php
/**
 * Created by PhpStorm.
 * User: anatol
 * Date: 22.07.2019
 * Time: 22:26
 */

namespace App\engine\renders;


interface IRenderService
{
    public function template($template, $params = []);
}