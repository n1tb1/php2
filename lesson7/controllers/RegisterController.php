<?php
namespace App\controllers;

use App\system\engine\Controller;

class RegisterController extends Controller
{
    protected $errors = [];

    public function index()
    {
        if($_SERVER['REQUEST_METHOD'] == 'POST' && $this->validate()) {

            $user = $this->user->userData;

            $user->name = $this->request->post('name');
            $user->lastname = $this->request->post('lastname');
            $user->email = $this->request->post('email');
            $user->telephone = $this->request->post('telephone');
            $user->password = $this->request->post('password');

            $this->user->add($user);

            $this->response->redirect('');
        } else {
            if (!$this->request->session('user_id')) {
                if($this->request->post('name')) {
                    $data['name'] = $this->request->post('name');
                }
                if($this->request->post('lastname')) {
                    $data['lastname'] = $this->request->post('lastname');
                }
                if($this->request->post('email')) {
                    $data['email'] = $this->request->post('email');
                }
                if($this->request->post('telephone')) {
                    $data['telephone'] = $this->request->post('telephone');
                }
                if($this->request->post('password')) {
                    $data['password'] = $this->request->post('password');
                }
                if($this->request->post('confirm')) {
                    $data['confirm'] = $this->request->post('confirm');
                }

                $data['errors'] = $this->errors;

                $data['header'] = (new HeaderController($this->registry))->index();
                $data['footer'] = (new FooterController($this->registry))->index();
                $data['breadcrumbs'] = $this->renderer->template('breadcrumbs');
                $data['site'] = SITE_HOST;
                echo $this->renderer->template('register', $data);
            } else {
                $this->response->redirect('');
            }
        }
    }

    protected function validate() {

        $data = $this->request->post();

        if(empty($data['name'])) {
            $this->errors['name'] = 'Please input name';
        }

        if(empty($data['lastname'])) {
            $this->errors['lastname'] = 'Please input lastname';
        }

        if(empty($data['email'])) {
            $this->errors['email'] = 'Please input email';
        }

        if(empty($data['telephone'])) {
            $this->errors['telephone'] = 'Please input telephone';
        }

        if(empty($data['password'])) {
            $this->errors['password'] = 'Please input password';
        }

        if(empty($data['confirm'])) {
            $this->errors['confirm'] = 'Please input confirm';
        }

        if($data['password'] !== $data['confirm']) {
            $this->errors['error'] = 'Password doesn\'t match confirm';
        }

        return !$this->errors;
    }
}