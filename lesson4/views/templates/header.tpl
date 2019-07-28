<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://jqueryui.com/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="views/css/norm.css">
    <link rel="stylesheet" href="views/css/style.css">
</head>
<body>
<div id="app" class="wrapper">
    <div class="top">
        <header class="header">
            <div class="container header-flex">
                <div class="header-left">
                    <a class="logo" href="<?= SITE_HOST; ?>"><img class="logo-img" src="img/logo.png" alt="logo">BRAN<span
                                class="logo-d">D</span></a>
                    <form class="form" action="#">
                        <div class="form-browse">Browse
                            <i class="fa fa-caret-down"></i>
                            <div class="dropdown-search">
                                <a href="index.php?controller=catalog" class="dropdown-search-header">women</a>
                                <ul class="search-list">
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Dresses</a></li>
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Tops</a></li>
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Sweaters/Knits</a></li>
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Jackets/Coats</a></li>
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Blazers</a></li>
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Denim</a></li>
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Leggins/Pants</a></li>
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Skirts/Shorts</a></li>
                                    <li><a class="search-list-item" href="index.php?controller=catalog">Accessories</a></li>
                                </ul>
                                <a href="#" class="dropdown-search-header">men</p></a>
                                <ul class="search-list">
                                    <li><a class="search-list-item" href="#">Tees/Tank Tops</a></li>
                                    <li><a class="search-list-item" href="#">Shirts/Polos</a></li>
                                    <li><a class="search-list-item" href="#">Sweaters</a></li>
                                    <li><a class="search-list-item" href="#">Sweetshirts/Hoodies</a></li>
                                    <li><a class="search-list-item" href="#">Blazers</a></li>
                                    <li><a class="search-list-item" href="#">Jackets/Wests</a></li>
                                </ul>
                            </div>
                        </div>
                        <input class="form-input" type="text" required placeholder="Search for item...">
                        <button class="form-submit" type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>
                <div class="header-right">
                    <div class="header-cart">
                        <span class="link-to-cart">
                            <span class="cart-circle"> 2 </span>
                            <img src="<?= SITE_HOST; ?>img/cart.svg" alt="cart">
                        </span>
                        <div class="cart-dropdown hidden">
                            <p class="empty-cart">Cart is empty</p>
                            <div>
                                <ul>

                                </ul>
                                <div class="cart-total">
                                    <span>TOTAL</span>
                                    <span>$ 0</span>
                                </div>
                                <a href="<?= SITE_HOST; ?>public/checkout.php"" class="cart-checkout">
                                    checkout
                                </a>
                                <a href="<?= SITE_HOST; ?>public/cart.php"" class="cart-go-to-cart">
                                    go to cart
                                </a>
                            </div>
                        </div>
                    </div>
                    <button class="button account">My Account <i class="fa fa-caret-down"></i>
                        <span class="account-dropdown">
                        <a href="#" class="account-link">Register</a>
                        <a href="#" class="account-link">Sing in</a>
                      </span>
                    </button>
                </div>
            </div>
        </header>
        <nav class="navigation">
            <div class="container">
                <ul class="menu">
                    <li class="menu-link"><a href="<?= SITE_HOST; ?>">Home</a></li>
                    <li class="menu-link"><a href="<?= SITE_HOST; ?>public/review.php">Reviews</a></li>
                    <li class="menu-link">
                        <a href="index.php?controller=catalog">Man</a>

                        <div class="menu-link-dropdown">
                            <div class="menu-link-dropdown-item">
                                <div class="item-block">
                                    <a href="index.php?controller=catalog" class="dropdown-search-header">Man</a>

                                    <div class="search-line"></div>
                                    <ul class="menu-link-dropdown-list">
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Dresses</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Tops</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Sweaters/Knits</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Jackets/Coats</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Blazers</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Denim</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Leggins/Pants</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Skirts/Shorts</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Accessories</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="menu-link-dropdown-item">
                                <div class="item-block">
                                    <a href="index.php?controller=catalog" class="dropdown-search-header">Man</a>

                                    <div class="search-line"></div>
                                    <ul class="menu-link-dropdown-list">
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Dresses</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Tops</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Sweaters/Knits</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Jackets/Coats</a></li>
                                    </ul>
                                </div>
                                <div class="item-block">
                                    <a href="index.php?controller=catalog" class="dropdown-search-header">Man</a>

                                    <div class="search-line"></div>
                                    <ul class="menu-link-dropdown-list">
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Dresses</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Tops</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Sweaters/Knits</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="menu-link-dropdown-item">
                                <div class="item-block">
                                    <a href="index.php?controller=catalog" class="dropdown-search-header">Man</a>

                                    <div class="search-line"></div>
                                    <ul class="menu-link-dropdown-list">
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Dresses</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Tops</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Sweaters/Knits</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="index.php?controller=catalog">Jackets/Coats</a></li>
                                    </ul>
                                </div>
                                <div class="item-block">
                                    <a href="index.php?controller=catalog"><img class="item-block-img" src="img/dropdown/Layer_42.png" alt="ad"></a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="menu-link"><a href="index.php?controller=catalog">Women</a></li>
                    <li class="menu-link"><a href="index.php?controller=catalog">Kids</a></li>
                    <li class="menu-link"><a href="index.php?controller=catalog">Accoseriese</a></li>
                    <li class="menu-link"><a href="index.php?controller=catalog">Featured</a></li>
                    <li class="menu-link"><a href="index.php?controller=catalog">Hot Deals </a></li>
                </ul>

            </div>
        </nav>
