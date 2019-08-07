$(document).ready(() => {
 $('.header-cart img').on('click', () => {
   $('.cart-dropdown').toggle();
 });

  $('.button-cart').on('click', element => {
    $.ajax({
      url : `cart/addProduct?product_id=${element.currentTarget.dataset.id}`,
      method: "GET",
      dataType: "json",
      success: cart => {
        let items = '';
        for (let [key, item] of Object.entries(cart.contents)) {
          items += `<li class="cart-item">
                                    <a href="#"><img class="cart-item-img" src="img/${item.img}"></a>
                                    <div class="cart-item-info">
                                        <a class="cart-item-name" href="#">${item.product_name}</a>
                                        <span class="cart-item-rate">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </span>
                                        <span class="cart-item-price">${item.quantity} x ${item.price}$</span>
                                    </div>
                                    <i class="fa fa-times-circle cart-item-delete" data-id="${item.product_id}"></i>
                                </li>`;
        }
        let html = `<ul>  
                            ${items}
                            </ul>
                            <div class="cart-total">
                                <span>TOTAL</span>
                                <span>$${cart.amount}</span>
                            </div>
                            <a href="checkout.html">
                                <div class="cart-checkout">checkout</div>
                            </a>
                            <a href="cart.html">
                                <div class="cart-go-to-cart">go to cart</div>
                            </a>`;
        $('#cart_quantity').text(cart.count_goods);
        $('.cart-dropdown').html(html);
      }
    });
  });

  $(document).on('click', '.cart-item-delete', element => {
     $.ajax({
        url : `cart/deleteProduct?product_id=${element.target.dataset.id}`,
        method: "GET",
        dataType: "json",
        success: cart => {
          let items = '';
          for (let [key, item] of Object.entries(cart.contents)) {
            items += `<li class="cart-item">
                                    <a href="#"><img class="cart-item-img" src="img/${item.img}"></a>
                                    <div class="cart-item-info">
                                        <a class="cart-item-name" href="#">${item.product_name}</a>
                                        <span class="cart-item-rate">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </span>
                                        <span class="cart-item-price">${item.quantity} x ${item.price}$</span>
                                    </div>
                                    <i class="fa fa-times-circle cart-item-delete" data-id="${item.product_id}"></i>
                                </li>`;
          }
          let html = `<ul>  
                            ${items}
                            </ul>
                            <div class="cart-total">
                                <span>TOTAL</span>
                                <span>$${cart.amount}</span>
                            </div>
                            <a href="checkout.html">
                                <div class="cart-checkout">checkout</div>
                            </a>
                            <a href="cart.html">
                                <div class="cart-go-to-cart">go to cart</div>
                            </a>`;
          $('#cart_quantity').text(cart.count_goods);
          $('.cart-dropdown').html(html);
        }
      });
  });

  $('#clear-cart').on('click', e => {
    e.preventDefault();
    $.ajax({
      url : `cart/clear`,
      success: data => {
        document.location.reload(true);
      }
    });
  });
});
