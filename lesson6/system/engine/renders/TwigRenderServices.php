<?php
namespace App\system\engine\renders;


class TwigRenderServices implements IRenderService
{
    protected $twig;

    public function __construct()
    {
        $loader = new \Twig\Loader\FilesystemLoader(DIR_VIEWS . 'twig');

        $this->twig = new \Twig\Environment($loader, [
            //'cache' => DIR_VIEWS . 'twig/cache',
            'autoescape' => false
        ]);
    }

    public function template($template, $data = [])
    {
        $template = $this->twig->load($template . '.twig');

        return $template->render($data);
    }
}