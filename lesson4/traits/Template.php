<?php
namespace App\traits;

trait Template
{
    public function render($template, $data = [])
    {
        echo $this->template($template, $data);
    }

    public function template($template, $data = [])
    {
        ob_start();
        extract($data);
        include DIR_TEMPLATES . 'templates/' . $template . '.tpl';
        return ob_get_clean();
    }
}
