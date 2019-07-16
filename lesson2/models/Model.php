<?php
namespace App\models;

abstract class Model
{
    /**
     * @var \App\services\BD Класс для работы с базой данных
     */
    protected $bd;

    /**
     * Model constructor.
     * @param \App\services\BD $bd
     */
    public function __construct(\App\services\BD $bd)
    {
        $this->bd = $bd;
    }

    /**
     * Данный метод должен вернуть название таблицы
     * @return string
     */
    abstract protected function getTableName();

    /**
     * Возращает пользователя с указанным id
     *
     * @param int $id ID Записи таблицы
     * @return array
     */
    public function getOne($id)
    {
        echo $id;
    }

    /**
     *
     */
    public function getAll()
    {
        echo "all";
    }

    /**
     * @param string $sql
     */
    public function insert(string $sql)
    {
        //
    }

    /**
     * @param string $sql
     */
    public function update(string $sql)
    {
        //
    }

    /**
     * @param string $sql
     */
    public function delete(string $sql)
    {
        //
    }
}
