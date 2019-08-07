<div class="content">
  <div class="container">
    <p><?= $data['error']; ?></p>
    <div class="reviews">
      <div class="left">
        <?php if($reviews) :?>
        <?php foreach($reviews as $review) :?>
        <div class="review-block">
          <div class="panel-heading">
            <h3 class="panel-title"><?= $review['name']; ?></h3>
          </div>
          <div class="panel-body">
            <?= $review['text']; ?>
          </div>
          <div class="panel-footer"><?= $review['date_added']; ?></div>
        </div>
        <?php endforeach;?>
        <?php endif;?>
      </div>
      <div class="right">
        <form method="post">
          <div class="form-group">
            <input type="text" name="name" class="form-control" id="name" value="<?= $data['name']; ?>" placeholder="Name">
          </div>
          <div class="form-group">
            <input type="text" name="email" class="form-control" id="email" value="<?= $data['email']; ?>" placeholder="Email">
          </div>
          <div class="form-group">
            <textarea name="text" class="form-control" id="text" placeholder="Comment"><?= $data['text']; ?></textarea>
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-default">Submit</button>
          </div>
        </form>
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
        <a href="#"><img class="subscribe-left-block-img" src="<?= SITE_HOST; ?>img/subscribe/Layer_40.png"
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