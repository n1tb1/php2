<?php
namespace App\system\engine;

use App\system\services\BD;

/**
 * Class Repository
 * @package App\system\engine
 *
 * @property int $id
 */
abstract class Repository
{
    /**
     * @var BD Класс для работы с базой данных
     */
    protected $bd;

    /**
     * Model constructor.
     */
    public function __construct()
    {
        $this->bd = BD::getInstance();
    }

    /**
     * Данный метод должен вернуть название таблицы
     * @return string
     */
    abstract protected function getTableName();

    /**
     * Данный метод должен вернуть название класса
     * @return string
     */
    abstract protected function getEntityName();

    /**
     * Возращает запись с указанным id
     *
     * @param int $id ID Записи таблицы
     * @return array
     */
    public function getOne($id)
    {
        $tableName = $this->getTableName();
        $sql = "SELECT * FROM {$tableName} WHERE id = :id";
        return $this->bd->findObject(
            $sql,
            $this->getEntityName(),
            [':id' => $id]
        );
    }

    /**
     * Получение всех записей таблицы
     * @return mixed
     */
    public  function getAll()
    {
        $tableName = $this->getTableName();
        $sql = "SELECT * FROM {$tableName} ";
        return $this->bd->findObjects($sql, $this->getEntityName());
    }
    //INSERT INTO users(fio, login, password) VALUES (:fio, :login, :password)

    protected function insert(Entity $entity)
    {
        $columns = [];
        $params = [];

        foreach ($entity as $key => $value) {
            if (empty($value)) {
                continue;
            }
            $columns[] = $key;
            $params[":{$key}"] = $value;
        }

        $columnsString = implode(', ', $columns);
        $placeholders = implode(', ', array_keys($params));
        $tableName = $this->getTableName();
        $sql = "INSERT INTO {$tableName} ({$columnsString}) VALUES ({$placeholders})";
        $this->bd->execute($sql, $params);
        $this->id = $this->bd->lastInsertId();
    }

    protected function update(Entity $entity) {
        $values = [];
        $params = [':id' => $entity->id];

        foreach ($entity as $key => $value) {
            if ($key == 'id') {
                continue;
            }
            $values[] = "{$key} = :{$key}";
            $params[":{$key}"] = $value;
        }

        $valuesString = implode(', ', $values);
        $tableName = $this->getTableName();
        $sql = "UPDATE {$tableName} SET {$valuesString} WHERE id = :id";
        $this->bd->execute($sql, $params);
    }

    public function save(Entity $entity) {
        if (empty($entity->id)) {
            $this->insert($entity);
            return;
        }
        $this->update($entity);
        return;
    }

    public function delete(Entity $entity)
    {
        $tableName = $this->getTableName();
        $sql = "DELETE FROM {$tableName} WHERE id = :id ";
        $this->bd->execute($sql, [':id' => $entity->id]);
    }
}
