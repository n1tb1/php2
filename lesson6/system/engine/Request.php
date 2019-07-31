<?php
namespace App\system\engine;

class Request
{
    private $requestString;
    private $controller;
    private $action;
    private $params;
    private $get;
    private $post;

    public function __construct()
    {
        $this->requestString = $_SERVER['REQUEST_URI'];
        $this->parseRequest();
    }

    private function parseRequest()
    {
        $pattern = preg_replace("#" . DIR_ROOT . "#", '', $this->requestString);

        if (preg_match_all('#(?P<controller>\w+)[\/]?(?P<action>\w+)?[\/]?[?]?(?P<params>.*)#ui', $pattern, $matches)) {
            $this->controller = $matches['controller'][0] ?? 'common';
            $this->action = isset($matches['action'][0]) && $matches['action'][0] != '' ? $matches['action'][0] : 'index';
            $this->params = $matches['params'][0];
            $this->get = $_GET;
            $this->post = $_POST;
        } else {
            $this->controller = 'common';
            $this->action = 'index';
            $this->params = [];
            $this->get = $_GET;
            $this->post = $_POST;
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
    public function getParams()
    {
        return $this->params;
    }

    /**
     * @param mixed $params
     */
    public function setParams($params): void
    {
        $this->data = $params;
    }

    /**
     * @return mixed
     */
    public function getGet()
    {
        return $this->get;
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
    public function getPost()
    {
        return $this->post;
    }

    /**
     * @param mixed $post
     */
    public function setPost($post)
    {
        $this->post = $post;
    }


}