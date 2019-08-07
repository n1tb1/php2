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

    public function getEntity() {
        return new CartEntity();
    }

    public function getCartBySessionId($session_id){
        $tableName = $this->getTableName();
        $sql = "SELECT * FROM {$tableName} WHERE session_id = :session_id";
        return $this->bd->findObject(
            $sql,
            $this->getEntityName(),
            [':session_id' => $session_id]
        );
    }

}