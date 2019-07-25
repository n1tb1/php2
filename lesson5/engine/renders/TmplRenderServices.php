<?php
/**
 * Created by PhpStorm.
 * User: anatol
 * Date: 22.07.2019
 * Time: 22:00
 */

namespace App\engine\renders;


class TmplRenderServices implements IRenderService
{
    public function template($template, $data = [])
    {
        ob_start();
        extract($data);
        include DIR_VIEWS . 'templates/' . $template . '.tpl';
        return ob_get_clean();
    }
}