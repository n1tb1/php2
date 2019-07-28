<?php
namespace App\engine;

use App\engine\renders\IRenderService;

abstract class Controller
{
    protected $renderer;

    public function __construct(IRenderService $renderer)
    {
        $this->renderer = $renderer;
    }

    protected function render($template, $data = [])
    {
        echo $this->template($template, $data);
    }

    protected function template($template, $data = [])
    {
        return $this->renderer->template($template, $data);
    }
}
