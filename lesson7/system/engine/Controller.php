<?php
namespace App\system\engine;

abstract class Controller
{
    protected $registry = [];

    public function __construct(Registry $registry)
    {
        $this->registry = $registry;
    }

    public function __get($key) {
        return $this->registry->get($key);
    }

    public function __set($key, $value) {
        $this->registry->set($key, $value);
    }
}
