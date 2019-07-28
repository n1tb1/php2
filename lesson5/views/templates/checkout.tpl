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
    <link rel="stylesheet" href="css/norm.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
<div id="app" class="wrapper">
    <div class="top">
        <header class="header">
            <div class="container header-flex">
                <div class="header-left">
                    <a class="logo" href="index.html"><img class="logo-img" src="img/logo.png" alt="logo">BRAN<span class="logo-d">D</span></a>
                    <form class="form" action="#">
                        <div class="form-browse">Browse
                            <i class="fa fa-caret-down"></i>
                            <div class="dropdown-search">
                                <a href="#" class="dropdown-search-header">women</a>
                                <ul class="search-list">
                                    <li><a class="search-list-item" href="#">Dresses</a></li>
                                    <li><a class="search-list-item" href="#">Tops</a></li>
                                    <li><a class="search-list-item" href="#">Sweaters/Knits</a></li>
                                    <li><a class="search-list-item" href="#">Jackets/Coats</a></li>
                                    <li><a class="search-list-item" href="#">Blazers</a></li>
                                    <li><a class="search-list-item" href="#">Denim</a></li>
                                    <li><a class="search-list-item" href="#">Leggins/Pants</a></li>
                                    <li><a class="search-list-item" href="#">Skirts/Shorts</a></li>
                                    <li><a class="search-list-item" href="#">Accessories</a></li>
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
                    <cart ref="cart"></cart>
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
                    <li class="menu-link"><a href="index.html">Home</a></li>
                    <li class="menu-link">
                        <a href="catalog.html">Man</a>

                        <div class="menu-link-dropdown">
                            <div class="menu-link-dropdown-item">
                                <div class="item-block">
                                    <a href="catalog.html" class="dropdown-search-header">Man</a>

                                    <div class="search-line"></div>
                                    <ul class="menu-link-dropdown-list">
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Dresses</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Tops</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Sweaters/Knits</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Jackets/Coats</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Blazers</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Denim</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Leggins/Pants</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Skirts/Shorts</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Accessories</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="menu-link-dropdown-item">
                                <div class="item-block">
                                    <a href="catalog.html" class="dropdown-search-header">Man</a>

                                    <div class="search-line"></div>
                                    <ul class="menu-link-dropdown-list">
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Dresses</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Tops</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Sweaters/Knits</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Jackets/Coats</a></li>
                                    </ul>
                                </div>
                                <div class="item-block">
                                    <a href="catalog.html" class="dropdown-search-header">Man</a>

                                    <div class="search-line"></div>
                                    <ul class="menu-link-dropdown-list">
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Dresses</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Tops</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Sweaters/Knits</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="menu-link-dropdown-item">
                                <div class="item-block">
                                    <a href="catalog.html" class="dropdown-search-header">Man</a>

                                    <div class="search-line"></div>
                                    <ul class="menu-link-dropdown-list">
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Dresses</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Tops</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Sweaters/Knits</a></li>
                                        <li><a class="menu-link-dropdown-list-item" href="catalog.html">Jackets/Coats</a></li>
                                    </ul>
                                </div>
                                <div class="item-block">
                                    <a href="catalog.html"><img class="item-block-img" src="img/dropdown/Layer_42.png" alt="ad"></a>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="menu-link"><a href="catalog.html">Women</a></li>
                    <li class="menu-link"><a href="catalog.html">Kids</a></li>
                    <li class="menu-link"><a href="catalog.html">Accoseriese</a></li>
                    <li class="menu-link"><a href="catalog.html">Featured</a></li>
                    <li class="menu-link"><a href="catalog.html">Hot Deals </a></li>
                </ul>

            </div>
        </nav>
        <nav class="breadcrumbs">
            <div class="container breadcrumbs-container">
                <div class="breadcrumbs-header">
                    New arrivals
                </div>
                <div class="breadcrumbs-nav">
                    <a class="breadcrumbs-nav-link" href="index.html">home</a> /
                    <a href="checkout.html" class="breadcrumbs-nav-link pink bold">checkout</a>
                </div>
            </div>
        </nav>
        <form action="#" class="checkout-content">
            <div class="container">
                <details class="checkout-accordion" open>
                    <summary>01. shipping address</summary>
                    <div class="shipping-address">
                        <div class="shipping-address-block">
                            <form name="" action="#">
                                <p class="shipping-address-header">
                                    Check as a guest or register
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="user-type shipping-address-header">
                                    <label class="radio-container">
                                        <input type="radio" name="user_type" checked="checked"> checkout as guest
                                        <span class="radio-checkmark"></span>
                                    </label>
                                    <label class="radio-container">
                                        <input type="radio" name="user_type"> register
                                        <span class="radio-checkmark"></span>
                                    </label>
                                </div>
                                <p class="shipping-address-header">
                                    register and save time!
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="shipping-address-add-text">
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Fast and easy checkout
                                    </p>
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Easy access to your order history and status
                                    </p>
                                </div>
                                <a href="#" class="checkout-button">continue</a>
                            </form>
                        </div>
                        <div class="shipping-address-block">
                            <form class="form-login" action="#">
                                <p class="shipping-address-header">
                                    Already registered?
                                </p>
                                <p class="shipping-address-text">
                                    Please login below
                                </p>
                                <div class="display-vertical">
                                    <label class="login-label required" for="email"> email address</label>
                                    <input type="email" class="login-input" name="email" id="email" required>
                                </div>
                                <div class="display-vertical">
                                    <label class="login-label required" for="password"> Password</label>
                                    <input type="password" class="login-input" name="password" id="password" required>
                                    <span class="required-text">Required Fileds</span>
                                </div>
                                <div class="display-horizontal">
                                    <button type="submit" class="checkout-button">log in</button>
                                    <a href="#" class="forgot-password">Forgot Password?</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </details>
                <details class="checkout-accordion">
                    <summary>02. billing information</summary>
                    <div class="shipping-address">
                        <form class="form-login" action="#">
                            <p class="shipping-address-header">
                                Already registered?
                            </p>
                            <p class="shipping-address-text">
                                Please login below
                            </p>
                            <div class="display-vertical">
                                <label class="login-label required" for="email"> email address</label>
                                <input type="email" class="login-input" name="email" id="email" required>
                            </div>
                            <div class="display-vertical">
                                <label class="login-label required" for="password"> Password</label>
                                <input type="password" class="login-input" name="password" id="password" required>
                                <span class="required-text">Required Fileds</span>
                            </div>
                            <div class="display-horizontal">
                                <button type="submit" class="checkout-button">log in</button>
                                <a href="#" class="forgot-password">Forgot Password?</a>
                            </div>
                        </form>
                    </div>
                </details>
                <details class="checkout-accordion">
                    <summary>03. shipping information</summary>
                    <div class="shipping-address">
                        <div class="shipping-address-block">
                            <form name="" action="#">
                                <p class="shipping-address-header">
                                    Check as a guest or register
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="user-type shipping-address-header">
                                    <label for=""><input type="radio" name="user_type" required> checkout as guest</label>
                                    <label for=""><input type="radio" name="user_type" required> register</label>
                                </div>
                                <p class="shipping-address-header">
                                    register and save time!
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="shipping-address-add-text">
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Fast and easy checkout
                                    </p>
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Easy access to your order history and status
                                    </p>
                                </div>
                                <a href="#" class="checkout-button">continue</a>
                            </form>
                        </div>
                        <div class="shipping-address-block">
                            <form action="#">
                                <p class="shipping-address-header">
                                    Already registered?
                                </p>
                                <p class="shipping-address-text">
                                    Please login below
                                </p>
                            </form>
                        </div>
                    </div>
                </details>
                <details class="checkout-accordion">
                    <summary>04. payment method</summary>
                    <div class="shipping-address">
                        <div class="shipping-address-block">
                            <form name="" action="#">
                                <p class="shipping-address-header">
                                    Check as a guest or register
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="user-type shipping-address-header">
                                    <label for=""><input type="radio" name="user_type" required> checkout as guest</label>
                                    <label for=""><input type="radio" name="user_type" required> register</label>
                                </div>
                                <p class="shipping-address-header">
                                    register and save time!
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="shipping-address-add-text">
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Fast and easy checkout
                                    </p>
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Easy access to your order history and status
                                    </p>
                                </div>
                                <a href="#" class="checkout-button">continue</a>
                            </form>
                        </div>
                        <div class="shipping-address-block">
                            <form action="#">
                                <p class="shipping-address-header">
                                    Already registered?
                                </p>
                                <p class="shipping-address-text">
                                    Please login below
                                </p>
                            </form>
                        </div>
                    </div>
                </details>
                <details class="checkout-accordion">
                    <summary>05. shipping method</summary>
                    <div class="shipping-address">
                        <div class="shipping-address-block">
                            <form name="" action="#">
                                <p class="shipping-address-header">
                                    Check as a guest or register
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="user-type shipping-address-header">
                                    <label for=""><input type="radio" name="user_type" required> checkout as guest</label>
                                    <label for=""><input type="radio" name="user_type" required> register</label>
                                </div>
                                <p class="shipping-address-header">
                                    register and save time!
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="shipping-address-add-text">
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Fast and easy checkout
                                    </p>
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Easy access to your order history and status
                                    </p>
                                </div>
                                <a href="#" class="checkout-button">continue</a>
                            </form>
                        </div>
                        <div class="shipping-address-block">
                            <form action="#">
                                <p class="shipping-address-header">
                                    Already registered?
                                </p>
                                <p class="shipping-address-text">
                                    Please login below
                                </p>
                            </form>
                        </div>
                    </div>
                </details>
                <details class="checkout-accordion">
                    <summary>06. order review</summary>
                    <div class="shipping-address">
                        <div class="shipping-address-block">
                            <form name="" action="#">
                                <p class="shipping-address-header">
                                    Check as a guest or register
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="user-type shipping-address-header">
                                    <label for=""><input type="radio" name="user_type" required> checkout as guest</label>
                                    <label for=""><input type="radio" name="user_type" required> register</label>
                                </div>
                                <p class="shipping-address-header">
                                    register and save time!
                                </p>
                                <p class="shipping-address-text">
                                    Register with us for future convenience
                                </p>
                                <div class="shipping-address-add-text">
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Fast and easy checkout
                                    </p>
                                    <p class="shipping-address-text">
                                        <i class="fa fa-angle-double-right"></i> Easy access to your order history and status
                                    </p>
                                </div>
                                <a href="#" class="checkout-button">continue</a>
                            </form>
                        </div>
                        <div class="shipping-address-block">
                            <form action="#">
                                <p class="shipping-address-header">
                                    Already registered?
                                </p>
                                <p class="shipping-address-text">
                                    Please login below
                                </p>
                            </form>
                        </div>
                    </div>
                </details>
            </div>
        </form>
        <script>
            $('details').click(function (event) {
                $('details').not(this).removeAttr("open");
                $('html, body').animate({
                    scrollTop: ($(this).offset().top)
                },500);
            });
        </script>
        <div class="subscribe">
            <div class="container subscribe-container">
                <div class="subscribe-left-block">
                    <div class="left-block-content">
                        <a href="#"><img class="subscribe-left-block-img" src="img/subscribe/Layer_40.png" alt="author"></a>
                        <div class="subscribe-left-block-text">
                            <p class="qoute">“Vestibulum quis porttitor dui! Quisque viverra nunc mi,
                                a pulvinar purus condimentum a. Aliquam condimentum mattis neque sed pretium”</p>
                            <a href="#">
                                <p class="qoute-author">Bin Burhan</p>
                            </a>
                            <p class="qoute-place">Dhaka, Bd</p>
                            <div class="left-block-lines">
                                <a href="#">
                                    <div class="gray-line"></div>
                                </a>
                                <a href="#">
                                    <div class="pink-line"></div>
                                </a>
                                <a href="#">
                                    <div class="gray-line"></div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="subscribe-right-block">
                    <div class="right-block-content">
                        <p class="right-block-content-header">
                            Subscribe
                        </p>
                        <p class="right-block-content-text">
                            FOR OUR NEWLETTER AND PROMOTION
                        </p>
                        <form class="input-block" action="#">
                            <input type="email" class="subscribe-input" placeholder="Enter Your Email">
                            <button type="submit" class="subscribe-button">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="footer-info">
            <div class="container footer-container">
                <div class="footer-brand">
                    <div class="footer-brand-img">
                        <a class="logo" href="#"><img class="logo-img" src="img/logo.png" alt="logo">BRAN<span
                                class="logo-d">D</span></a>
                    </div>
                    <div class="footer-brand-text">
                        Objectively transition extensive data rather than cross functional solutions. Monotonectally
                        syndicate multidisciplinary materials before go forward benefits. Intrinsicly syndicate an expanded
                        array of processes and cross-unit partnerships.
                        <br><br>
                        Efficiently plagiarize 24/365 action items and focused infomediaries.
                        Distinctively seize superior initiatives for wireless technologies. Dynamically optimize.
                    </div>
                </div>
                <div class="footer-info">
                    <p class="footer-info-header">Company</p>
                    <a class="footer-info-link" href="#"><p >Home</p></a>
                    <a class="footer-info-link" href="#">Shop</a>
                    <a class="footer-info-link" href="#">About</a>
                    <a class="footer-info-link" href="#">How it works</a>
                    <a class="footer-info-link" href="#">Contact</a>
                </div>
                <div class="footer-info">
                    <p class="footer-info-header">Information</p>
                    <a class="footer-info-link" href="#">Terms & Conditions</a>
                    <a class="footer-info-link" href="#">Privacy Policy</a>
                    <a class="footer-info-link" href="#">How to buy</a>
                    <a class="footer-info-link" href="#">How to sell</a>
                    <a class="footer-info-link" href="#">Promotion</a>
                </div>
                <div class="footer-info">
                    <p class="footer-info-header">Shop Category</p>
                    <a class="footer-info-link" href="#">Men</a>
                    <a class="footer-info-link" href="#">Women</a>
                    <a class="footer-info-link" href="#">Child</a>
                    <a class="footer-info-link" href="#">Apparel</a>
                    <a class="footer-info-link" href="#">Brows all</a>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container container-copyright">
                <div class="copy-right-left">© 2017 Brand All Rights Reserved.</div>
                <div class="copy-right-right">
                    <a href="#"><i class="fa fa-facebook copy-right-icon"></i></a>
                    <a href="#"><i class="fa fa-twitter copy-right-icon"></i></a>
                    <a href="#"><i class="fa fa-linkedin copy-right-icon"></i></a>
                    <a href="#"><i class="fa fa-pinterest-p copy-right-icon"></i></a>
                    <a href="#"><i class="fa fa-google-plus copy-right-icon"></i></a>
                </div>
            </div>
        </div>
    </footer>
</div>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="js/CartComp.js"></script>
<script src="js/ProdComp.js"></script>
<script src="js/ErrorComp.js"></script>
<script src="js/FilterComp.js"></script>
<script src="js/main.js"></script>
</body>

</html>
