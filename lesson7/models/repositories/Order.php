<?php
namespace App\models\repositories;

use App\system\engine\Repository;
use App\models\entities\Order as OrderEntity;

/**
 * Class Order
 * @package App\models
 * @property mixed contents
 */
class Order extends Repository
{
    protected function getTableName()
    {
        return 'orders';
    }

    protected function getEntityName()
    {
        return OrderEntity::class;
    }

    public function getEntity() {
        return new OrderEntity();
    }
}