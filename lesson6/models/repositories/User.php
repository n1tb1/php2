<?php
namespace App\models\repositories;

use \App\system\engine\Repository;
use \App\models\entities\User as UserEntity;

/**
 * Class UserRepository
 * @package App\models\repositories
 *
 * @method User getOne($id)
 */
class User extends Repository
{
    protected function getTableName()
    {
        return 'users';
    }

    protected function getEntityName()
    {
        return UserEntity::class;
    }
}
