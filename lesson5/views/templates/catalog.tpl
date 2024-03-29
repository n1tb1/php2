<?= $header; ?>
<?= $breadcrumbs; ?>

<div class="content">
  <div class="container content-container">
    <div class="left-block">
      <details class="left-block-container">
        <summary class="left-block-item">Category <i class="fa fa-caret-down"></i></summary>
        <ul class="left-block-dropdown">
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Accessories</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Bags</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Denim</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Hoodies & Sweatshirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Jackets & Coats</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Pants</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Polos</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shoes</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shorts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Sweaters & Knits</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">T-Shirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Tanks</a></li>
        </ul>
      </details>
      <details class="left-block-container">
        <summary class="left-block-item">Brand <i class="fa fa-caret-down"></i></summary>
        <ul class="left-block-dropdown">
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Accessories</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Bags</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Denim</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Hoodies & Sweatshirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Jackets & Coats</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Pants</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Polos</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shoes</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shorts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Sweaters & Knits</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">T-Shirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Tanks</a></li>
        </ul>
      </details>
      <details class="left-block-container">
        <summary class="left-block-item">Designer <i class="fa fa-caret-down"></i></summary>
        <ul class="left-block-dropdown">
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Accessories</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Bags</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Denim</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Hoodies & Sweatshirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Jackets & Coats</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Pants</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Polos</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shoes</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Shorts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Sweaters & Knits</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">T-Shirts</a></li>
          <li><a href="<?= SITE_HOST; ?>public/catalog.php">Tanks</a></li>
        </ul>
      </details>
    </div>
    <div class="right-block">
      <div class="top-filter">
        <div class="filter-options">
          <div class="filter-options-block">
            <div class="filter-options-header">ternding now</div>
            <div class="trend-links">
              <a href="#" class="trend-link">Bohemian</a>
              <a href="#" class="trend-link">Floral</a>
              <a href="#" class="trend-link">Lace</a>
            </div>
            <div class="trend-links">
              <a href="#" class="trend-link">Floral</a>
              <a href="#" class="trend-link">Lace</a>
              <a href="#" class="trend-link">Bohemian</a>
            </div>
          </div>
          <div class="filter-options-block">
            <div class="filter-options-header">size</div>
            <div class="size-check-box">
              <label class="check-box-item checkbox">xxs
                <input type="checkbox" checked="checked">
                <span class="checkbox-new"></span>
              </label>
              <label class="check-box-item checkbox">xs
                <input type="checkbox">
                <span class="checkbox-new"></span>
              </label>
              <label class="check-box-item checkbox">s
                <input type="checkbox">
                <span class="checkbox-new"></span>
              </label>
              <label class="check-box-item checkbox">m
                <input type="checkbox">
                <span class="checkbox-new"></span>
              </label>
              <label class="check-box-item checkbox">l
                <input type="checkbox">
                <span class="checkbox-new"></span>
              </label>
              <label class="check-box-item checkbox">xl
                <input type="checkbox">
                <span class="checkbox-new"></span>
              </label>
              <label class="check-box-item checkbox">xxl
                <input type="checkbox">
                <span class="checkbox-new"></span>
              </label>
            </div>
          </div>
          <div class="filter-options-block">
            <div class="filter-options-header">price</div>
            <div class="sliderconrainer">
              <div class="slider" id="slider-range"></div>
              <input type="hidden" id="amount" readonly>
              <div class="slider-text">
                <span class="range" id="range_val_1"></span>
                <span class="range" id="range_val_2"></span>
              </div>
            </div>
            <script>
              $(function () {
                $("#slider-range").slider({
                  range: true,
                  min: 0,
                  max: 1000,
                  values: [52, 400],
                  slide: function (event, ui) {
                    $("#range_val_1").text(ui.values[0]);
                    $("#range_val_2").text(ui.values[1]);
                    $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                  }
                });
                $("#range_val_1").text("$" + $("#slider-range").slider("values", 0));
                $("#range_val_2").text("$" + $("#slider-range").slider("values", 1));
                $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));
              });
            </script>
            <!--<div class="slidecontainer">
                <input type="range" min="1" max="100" value="50" class="slider" id="price_range">
            </div>-->
          </div>
        </div>
        <div class="sort-options">
          <div class="sort-options-block">
            <button class="sort-options-button">
              Sort By
            </button>
            <select class="sort-options-select">
              <option>name</option>
              <option>brand</option>
              <option>price</option>
              <option>color</option>
              <option>size</option>
            </select>
            <i class="fa fa-caret-down select-caret-down"></i>
          </div>
          <div class="sort-options-block">
            <button class="sort-options-button">
              Show
            </button>
            <select class="sort-options-select">
              <option>10</option>
              <option>20</option>
              <option>50</option>
              <option>100</option>
            </select>
            <i class="fa fa-caret-down select-caret-down"></i>
          </div>


        </div>
      </div>




      <div class="catalog-products">

        <?php foreach($products as $product) : ?>

        <div class="featured-items-product">
          <a href="<?= SITE_HOST . 'index.php?controller=product&id=' . $product->id; ?>">
            <div class="product-img">
              <img src="img/<?= $product->img; ?>" alt="text">
            </div>
          </a>
          <a href="#" class="button-cart">
            <span class="button-text"><i class="fa fa-shopping-cart"></i> Add to Cart</span>
          </a>
          <div class="product-text">
            <a class="text-item1" href="<?= SITE_HOST . 'public/product.php?product_id=' . $product->id; ?>">
              <?= $product->name; ?>
            </a>
            <p class="text-item2"><?= $product->price; ?>&#36;</p>
          </div>
        </div>

        <?php endforeach; ?>

      </div>




    </div>
  </div>
</div>
<div class="catalog-feature">
  <div class="container catalog-feature-container">
    <article class="catalog-feature-block-item">
      <img class="catalog-feature-img" src="<?= SITE_HOST; ?>img/feature/Forma_1.svg" alt="delivery">
      <div class="catalog-feature-block-item-text">
        <a class="item-text-header" href="#">Free Delivery</a>
        <span class="catalog-item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
      </div>
    </article>
    <article class="catalog-feature-block-item">
      <img class="catalog-feature-img" src="<?= SITE_HOST; ?>img/feature/Forma_2.svg" alt="delivery">
      <div class="catalog-feature-block-item-text">
        <a class="item-text-header" href="#">Sales & discounts</a>
        <span class="catalog-item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
      </div>
    </article>
    <article class="catalog-feature-block-item">
      <img class="catalog-feature-img" src="<?= SITE_HOST; ?>img/feature/Forma_3.svg" alt="delivery">
      <div class="catalog-feature-block-item-text">
        <a class="item-text-header" href="#">Quality assurance</a>
        <span class="catalog-item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
      </div>
    </article>
  </div>
</div>
<div class="subscribe">
  <div class="container subscribe-container">
    <div class="subscribe-left-block">
      <div class="left-block-content">
        <a href="#"><img class="subscribe-left-block-img" src="img/subscribe/Layer_40.png"
                         alt="author"></a>
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
<?= $footer; ?>



