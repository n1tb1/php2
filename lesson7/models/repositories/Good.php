<?php
namespace App\models\repositories;

use App\system\engine\Repository;
use App\models\entities\Good as GoodEntity;

/**
 * Class Good
 * @package App\models
 */
class Good extends Repository
{
    protected function getTableName()
    {
        return 'products';
    }

    protected function getEntityName()
    {
        return GoodEntity::class;
    }
}