<?php
namespace App\system\engine;

use App\controllers\ErrorController;
use App\system\engine\renders\TwigRenderServices;

final class Router
{
    protected $registry;

    public function __construct(Registry $registry)
    {
        $this->registry = $registry;
        $this->registry->set('renderer', new TwigRenderServices());
    }

    public function execute() {
        $controller = 'App\\controllers\\' . ucfirst($this->registry->get('request')->getControllerName()) . 'Controller';
        $action = $this->registry->get('request')->getActionName();

        if (class_exists($controller)) {
            $controller = new $controller($this->registry);
            $controller->{$action}();
        } else {
            $controller = new ErrorController($this->registry);
            $controller->index();
        }
    }
}
