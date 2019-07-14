<?php
/**
 * Created by PhpStorm.
 * User: good
 * Date: 11/07/2019
 * Time: 15:53
 */

class Price
{
    protected $price;
    protected $discount;
    protected $special_price;

    public function __construct($data)
    {
        $this->price = $data['price'];
        $this->discount = $data['discount'];
        $this->special_price = $data['special_price'];
    }

    public function price($value = '')
    {
        if ($value) {
            $this->price = $value;
        } else {
            return $this->price;
        }
    }

    public function discount($value = '')
    {
        if ($value) {
            $this->discount = $value;
        } else {
            return $this->discount;
        }
    }

    public function specialPrice($value = '')
    {
        if ($value) {
            $this->special_price = $value;
        } else {
            return $this->special_price;
        }
    }
}

class Product extends Price
{
    protected $name;
    protected $description;
    protected $image;
    protected $status;

    public function __construct($data)
    {
        $this->name = $data['name'];
        $this->description = $data['description'];
        $this->image = $data['image'];
        $this->status = $data['status'];
    }

    public function name($value = '')
    {
        if ($value) {
            $this->name = $value;
        } else {
            return $this->name;
        }
    }

    public function description($value = '')
    {
        if ($value) {
            $this->description = $value;
        } else {
            return $this->description;
        }
    }

    public function image($value = '')
    {
        if ($value) {
            $this->image = $value;
        } else {
            return $this->image;
        }
    }

    public function status($value = '')
    {
        if ($value) {
            $this->status = $value;
        } else {
            return $this->status;
        }
    }
}

$product = new Product([
    'name' => 'book',
    'description' => 'Best book ever',
    'image' => 'some/path/to/book/picture',
    'status' => 1]);

var_dump($product);

// Различие классов в свойствах и методах класс продукт содержит методы класса прайс.


class A
{
    public function foo()
    {
        static $x = 0;
        echo ++$x;
    }
}

$a1 = new A();
$a2 = new A();
$a1->foo(); // 1
$a2->foo(); // 2
$a1->foo(); // 3
$a2->foo(); // 4
echo "\n\n";
// Что он выведет на каждом шаге? Почему?
// Свойство х статичное для класса А, не для его экземпляров, поэтом при каждом вызове функции foo оно будет увеличиваться

// Немного изменим п.5:
class B
{
    public function foo()
    {
        static $x = 0;
        echo ++$x;
    }
}

class C extends B
{
}

$a1 = new B();
$b1 = new C();
$a1->foo(); // 1
$b1->foo(); // 1
$a1->foo(); // 2
$b1->foo(); // 2
echo "\n\n";

// 6. Объясните результаты в этом случае.
// Класс С наследует статичное свойство класса В, их экземпляры увеличивают статичные свойства соответсвующих классов


// 7. *Дан код:
class D
{
    public function foo()
    {
        static $x = 0;
        echo ++$x;
    }
}

class E extends D
{
}

$a1 = new D;
$b1 = new E;
$a1->foo();
$b1->foo();
$a1->foo();
$b1->foo();
// Что он выведет на каждом шаге? Почему?*/
// Выведет тоже самое что и в предыдущем варианте, так как в данном случае мы не используем конструктор в классе, то
// Наличие круглых скобок не влияет на результат
