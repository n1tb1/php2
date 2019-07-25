<?= $header; ?>
<div class="promo">
  <div class="container promo-content">
    <div class="promo-text">
      <h3 class="promo-h3">THE BRAND</h3>

      <p class="promo-p">OF LUXERIOUS <span class="pink">FASHION</span></p>
    </div>
  </div>
</div>
<div class="product-offer">
  <div class="container product-container">
    <a href="index.php?controller=catalog" class="product-big">
      <div class="badge">
        <h2 class="badge-text">hot deal</h2>

        <p class="badge-cat pink">for man</p>
      </div>
      <img src="img/man.png" alt="man">
    </a>
    <a href="index.php?controller=catalog" class="product-small">
      <div class="badge">
        <h2 class="badge-text">luxirous &amp; trandy</h2>

        <p class="badge-cat pink">for man</p>
      </div>
      <img src="img/wallet.png" alt="wallet">
    </a>
    <a href="index.php?controller=catalog" class="product-small">
      <div class="badge">
        <h2 class="badge-text">30&#37; offer</h2>

        <p class="badge-cat pink">woman</p>
      </div>
      <img src="img/woman.png" alt="woman">
    </a>
    <a href="index.php?controller=catalog" class="product-big">
      <div class="badge">
        <h2 class="badge-text">new arrivals</h2>

        <p class="badge-cat pink">for kids</p>
      </div>
      <img src="img/boy.png" alt="boy">
    </a>
  </div>
</div>
<section>
  <div class="featured-items">
    <div class="containter">
      <h2 class="featured-items-text">Featured items</h2>

      <p class="featured-items-text-desc">
        Shop for items of what we featured in this week
      </p>
    </div>
  </div>
  <div class="container featured-items-list-container">
    <?php foreach($products as $product) : ?>
    <div class="featured-items-product">
      <a href="index.php?controller=product&id=<?= $product->id; ?>">
        <div class="product-img">
          <img src="img/<?= $product->img; ?>" alt="text">
        </div>
      </a>
      <a href="#" class="button-cart">
        <span class="button-text"><i class="fa fa-shopping-cart"></i> Add to Cart</span>
      </a>
      <div class="product-text">
        <a class="text-item1" href="index.php?controller=product&id=<?= $product->id; ?>">
          <?= $product->name; ?>
        </a>
        <p class="text-item2"><?= $product->price; ?>&#36;</p>
      </div>
    </div>

    <?php endforeach; ?>
  </div>
  <div class="all-items">
    <div class="container all-items-container">
      <a class="button-all-items" href="index.php?controller=catalog">
        <span class="all-items-text">Browse All Product <i class="fa fa-long-arrow-right"></i></span>
      </a>
    </div>
  </div>
</section>
<div class="feature">
  <div class="container feature-container">
    <a href="index.php?controller=catalog">
      <div class="feature-block-img">
        <img class="feature-img" src="img/feature/Layer_38.png" alt="feature">

        <div class="feature-img-text">
          <p>30% <span class="pink">OFFER</span></p>

          <p class="img-text-for">FOR WOMEN</p>
        </div>
      </div>
    </a>

    <div class="feature-block-info">
      <article class="feature-block-item">
        <img src="img/feature/Forma_1.svg" alt="delivery">

        <div class="feature-block-item-text">
          <a class="item-text-header" href="#">Free Delivery</a>
          <span class="item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
        </div>
      </article>
      <article class="feature-block-item">
        <img src="img/feature/Forma_2.svg" alt="delivery">

        <div class="feature-block-item-text">
          <a class="item-text-header" href="#">Sales & discounts</a>
          <span class="item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
        </div>
      </article>
      <article class="feature-block-item">
        <img src="img/feature/Forma_3.svg" alt="delivery">

        <div class="feature-block-item-text">
          <a class="item-text-header" href="#">Quality assurance</a>
          <span class="item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
        </div>
      </article>
    </div>
  </div>
</div>
<div class="subscribe">
  <div class="container subscribe-container">
    <div class="subscribe-left-block">
      <div class="left-block-content">
        <a href="#"><img class="subscribe-left-block-img" src="img/subscribe/Layer_40.png" alt="author"></a>

        <div class="subscribe-left-block-text">
          <p class="qoute">“Vestibulum quis porttitor dui! Quisque viverra nunc mi,
            a pulvinar purus condimentum a. Aliquam condimentum mattis neque sed pretium”</p>
          <a href="#"><p class="qoute-author">Bin Burhan</p></a>

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

        <form class="input-block" action="#" type="post">
          <input type="email" class="subscribe-input" placeholder="Enter Your Email">
          <button type="submit" class="subscribe-button">Subscribe</button>
        </form>
      </div>
    </div>
  </div>
</div>
<?= $footer; ?>
