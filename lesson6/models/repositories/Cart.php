<?php
namespace App\models\repositories;

use App\system\engine\Repository;
use App\models\entities\Cart as CartEntity;

/**
 * Class Good
 * @package App\models
 * @property mixed contents
 */
class Cart extends Repository
{
    protected function getTableName()
    {
        return 'cart';
    }

    protected function getEntityName()
    {
        return CartEntity::class;
    }

    public function setContents($contents)
    {
        $this->contents =  $contents;
    }

}