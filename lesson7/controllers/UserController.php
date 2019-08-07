<?php
namespace App\controllers;

use App\system\engine\Controller;
use App\models\repositories\User;
use App\system\engine\Entity;

class UserController extends Controller
{
    protected $userRepository;
    public $userData;

    public function __construct($registry)
    {
        parent::__construct($registry);

        $this->userRepository = new User();

        if ($this->request->session('user_id')) {
            $this->userData = $this->userRepository->getOne($this->request->session('user_id'));
        } else {
            $this->userData = new \App\models\entities\User();
        }
    }

    public function index()
    {
        if($_SERVER['REQUEST_METHOD'] == 'POST') {

        } else {
            $data['header'] = (new HeaderController($this->registry))->index();
            $data['footer'] = (new FooterController($this->registry))->index();
            $data['breadcrumbs'] = $this->renderer->template('breadcrumbs');

            echo $this->renderer->template('login', $data);
        }
    }

    public function add(Entity $entity) {
        $this->userRepository->save($entity);
    }

    public function edit() {

    }

    public function delete() {

    }

    public function login() {
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            if($this->request->post('email') && $this->request->post('password')) {
                $logged = $this->userRepository->login($this->request->post('email'), $this->request->post('password'));

                if($logged) {
                    $this->request->setSession('user_id', $logged->id);
                    $this->response->redirect('');
                } else {
                    $this->response->redirect('user/login');
                }
            }
        } else {
            $data['header'] = (new HeaderController($this->registry))->index();
            $data['footer'] = (new FooterController($this->registry))->index();
            $data['breadcrumbs'] = $this->renderer->template('breadcrumbs');

            echo $this->renderer->template('login', $data);
        }
    }

    public function logout() {
        $this->request->unSetSession('user_id');
        $this->response->redirect('user/login');
    }

    public function getUser($id) {
        return $this->userRepository->getOne($id);
    }

    public function getUsers() {
        $this->userRepository->getAll();
    }

    public function getId() {
        return $this->userData->id;
    }

    public function getName() {
        return $this->userData->name;
    }

    public function getLastname() {
        return $this->userData->lastname;
    }

    public function getEmail() {
        return $this->userData->email;
    }

    public function getTelephone() {
        return $this->userData->telephone;
    }

    public function getPassword() {
        return $this->userData->password;
    }

    public function getStatus() {
        return $this->userData->status;
    }
}