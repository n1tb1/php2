<?php
namespace App\models;

use App\services\BD;

abstract class Model
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
     * Возращает запись с указанным id
     *
     * @param int $id ID Записи таблицы
     * @return object
     */
    public function getOne($id)
    {
        return $this->bd->findObject(
            "SELECT * FROM " . $this->getTableName() . " WHERE id = :id",
            get_called_class(),
            [':id' => $id]
        );
    }

    /**
     * Получение всех записей таблицы
     * @return array
     */
    public function getAll()
    {
        return $this->bd->findObjects("SELECT * FROM " . $this->getTableName(), get_called_class());
    }

    protected function insert()
    {
        $columns = [];
        $params = [];

        foreach ($this as $key => $value) {
            if ($key == 'bd') {
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

    protected function update($id) {
        $values = [];
        $params = [':id' => $id];

        foreach ($this as $key => $value) {
            if ($key == 'bd' || $key == 'id') {
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

    public function save() {
        if (empty($this->id)) {
            $this->insert();
            return;
        }
        $this->update($this->id);
        return;
    }

    public function delete($id) {
        $tableName = $this->getTableName();
        $sql = "DELETE FROM {$tableName} WHERE id = :id";
        $this->bd->execute($sql, [':id' => $id]);
    }
}
