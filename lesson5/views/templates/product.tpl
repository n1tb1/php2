<?= $header; ?>
<?= $breadcrumbs; ?>
<div class="product-block">
  <div class="product-block-img">
    <a href="#" class="fa fa-angle-left product-block-img-angle-left"></a>
    <img class="product-block-img-img" src="img/<?= $product->img; ?>" alt="">
    <a href="#" class="fa fa-angle-right product-block-img-angle-right"></a>
  </div>
  <div class="container">
    <div class="product-block-container">
      <div class="product-block-description">
        <p class="product-block-description-header">
          <?= $title; ?>
        </p>
        <div class="product-block-lines">
          <div class="product-block-grey"></div>
          <div class="product-block-pink"></div>
          <div class="product-block-grey"></div>
        </div>
        <div class="product-block-brand">
          Moschino Cheap And Chic
        </div>
        <div class="product-block-rate">
          <i class="fa fa-star"></i>
          <i class="fa fa-star"></i>
          <i class="fa fa-star"></i>
          <i class="fa fa-star"></i>
          <i class="fa fa-star"></i>
        </div>
        <div class="product-block-text">
          Compellingly actualize fully researched processes before proactive outsourcing. Progressively syndicate
          collaborative architectures before cutting-edge services. Completely visualize parallel core competencies
          rather than exceptional portals.
        </div>
        <div class="product-block-attribute">
          <div class="product-block-attribute-item">
            <span class="attribute-item-text-grey">Material:</span>
            <span class="attribute-item-text">Cotton</span>
          </div>
          <div class="product-block-attribute-item">
            <span class="attribute-item-text-grey">Designer:</span>
            <span class="attribute-item-text">Binburhan</span>
          </div>
        </div>
        <div class="product-block-price">
          $<?= $product->price; ?>
        </div>
        <form action="#">
          <div class="product-block-option">
            <div class="product-block-option-item">
              <p class="product-block-option-item-header">choose color</p>
              <div name="color" id="color" class="option-item-select">
                <span class="red-square">Red</span>
                <i class="fa fa-caret-down"></i>
                <ul class="product-option-select">
                  <li><span class="red-square">Red</span></li>
                  <li><span class="green-square">green</span></li>
                  <li><span class="yellow-square">yellow</span></li>
                </ul>
              </div>
            </div>
            <div class="product-block-option-item">
              <p class="product-block-option-item-header">choose size</p>
              <div name="size" id="size" class="option-item-select">
                XXL <i class="fa fa-caret-down"></i>
                <ul class="product-option-select">
                  <li>XL</li>
                  <li>XS</li>
                  <li>M</li>
                </ul>
              </div>
            </div>
            <div class="product-block-option-item">
              <p class="product-block-option-item-header">quantity</p>
              <input type="text" name="quantity" class="product-option-input">
            </div>
          </div>
          <button class="product-block-button-cart"><i class="fa fa-shopping-cart"></i> Add to cart</button>
        </form>
      </div>
    </div>
    <p class="product-block-header">
      you may like also
    </p>
    <related ref="related"></related>
  </div>
</div>
<div class="catalog-feature">
  <div class="container catalog-feature-container">
    <article class="catalog-feature-block-item">
      <img class="catalog-feature-img" src="img/feature/Forma_1.svg" alt="delivery">
      <div class="catalog-feature-block-item-text">
        <a class="item-text-header" href="#">Free Delivery</a>
        <span class="catalog-item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
      </div>
    </article>
    <article class="catalog-feature-block-item">
      <img class="catalog-feature-img" src="img/feature/Forma_2.svg" alt="delivery">
      <div class="catalog-feature-block-item-text">
        <a class="item-text-header" href="#">Sales & discounts</a>
        <span class="catalog-item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
      </div>
    </article>
    <article class="catalog-feature-block-item">
      <img class="catalog-feature-img" src="img/feature/Forma_3.svg" alt="delivery">
      <div class="catalog-feature-block-item-text">
        <a class="item-text-header" href="#">Quality assurance</a>
        <span class="catalog-item-text-body">Worldwide delivery on all. Authorit tively morph next-generation innov tion with extensive models.</span>
      </div>
    </article>
  </div>
</div>
<?= $footer; ?>