<?php
namespace App\system\engine;

class Request
{
    private $requestString;
    private $controller;
    private $action;
    private $get;
    private $post;
    private $cookie;

    public function __construct()
    {
        session_start();
        $this->requestString = $_SERVER['REQUEST_URI'];
        $this->parseRequest();
        $this->setGet($_GET);
        $this->setPost($_POST);
        $this->setCookie($_COOKIE);
    }

    private function parseRequest()
    {
        $pattern = preg_replace("#" . DIR_ROOT . "#", '', $this->requestString);

        if (preg_match_all('#(?P<controller>\w+)[\/]?(?P<action>\w+)?[\/]?[?]?(?P<params>.*)#ui', $pattern, $matches)) {
            $this->controller = $matches['controller'][0] ?? 'common';
            $this->action = isset($matches['action'][0]) && $matches['action'][0] != '' ? $matches['action'][0] : 'index';
        } else {
            $this->controller = 'common';
            $this->action = 'index';
        }
    }

    /**
     * @return mixed
     */
    public function getRequestString()
    {
        return $this->requestString;
    }

    /**
     * @param mixed $requestString
     */
    public function setRequestString($requestString): void
    {
        $this->requestString = $requestString;
    }

    /**
     * @return mixed
     */
    public function getControllerName()
    {
        return $this->controller;
    }

    /**
     * @param mixed $controllerName
     */
    public function setControllerName($controller): void
    {
        $this->controller = $controller;
    }

    /**
     * @return mixed
     */
    public function getActionName()
    {
        return $this->action;
    }

    /**
     * @param mixed $actionName
     */
    public function setActionName($action): void
    {
        $this->action = $action;
    }


    /**
     * @return mixed
     */
    public function get($key = null)
    {
        if (empty($key)) {
            return $this->get;
        }
        return array_key_exists($key, $this->get) ? $this->get[$key] : [];
    }

    /**
     * @param mixed $get
     */
    public function setGet($get)
    {
        $this->get = $get;
    }

    /**
     * @return mixed
     */
    public function post($key = null)
    {
        if (empty($key)) {
            return $this->post;
        }
        return array_key_exists($key, $this->post) ? $this->post[$key] : [];
    }

    /**
     * @param mixed $post
     */
    public function setPost($post)
    {
        $this->post = $post;
    }

    /**
     * @return mixed
     */
    public function cookie($key = null)
    {
        if (empty($key)) {
            return $this->cookie;
        }
        return array_key_exists($key, $this->cookie) ? $this->cookie[$key] : [];
    }

    /**
     * @param mixed $post
     */
    public function setCookie($cookie)
    {
        $this->cookie = $cookie;
    }

    public function session($key = null)
    {
        if (empty($key)) {
            return $_SESSION;
        }
        return array_key_exists($key, $_SESSION) ? $_SESSION[$key] : [];
    }

    public function setSession($key, $value)
    {
        $_SESSION[$key] = $value;
    }

    public function unSetSession($key)
    {
        unset($_SESSION[$key]);
    }

}