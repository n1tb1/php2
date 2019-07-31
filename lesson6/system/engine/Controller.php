<?php
namespace App\system\engine;

use App\system\engine\renders\IRenderService;

abstract class Controller
{
    protected $renderer;
    protected $response;

    public function __construct(IRenderService $renderer)
    {
        $this->renderer = $renderer;
        $this->response = new Response();
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
