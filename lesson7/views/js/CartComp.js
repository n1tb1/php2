Vue.component('cart', {
  data() {
    return {
      cartItems: [],
      showCart: false,
      cartAmount: 0,
      cartGoodsQuantity: 0
    }
  },
  methods: {
    addProduct(product) {
      let find = this.cartItems.find(el => el.id_product === product.id_product);
      if (find) {
        this.$parent.putJson(`/api/cart/${find.id_product}`, {quantity: 1})
          .then(data => {
            if (data.result) {
              find.quantity++;
              this._cartAmountQuantity();
            }
          });
      } else {
        let prod = Object.assign({quantity: 1}, product);
        this.$parent.postJson(`/api/cart`, prod)
          .then(data => {
            if (data.result) {
              this.cartItems.push(prod);
              this._cartAmountQuantity();
            };
          });
      }
    },
    update(product) {
      let find = this.cartItems.find(el => el.id_product === product.id_product);
      if (find) {
        this.$parent.putJson(`/api/cart/${find.id_product}`, {quantity: +product.quantity})
          .then(data => {
            if (data.result) {
              find.quantity = +product.quantity;
              this._cartAmountQuantity();
            }
          });
      }
    },
    remove(product) {
      let find = this.cartItems.find(el => el.id_product === product.id_product);
      if (find) {
        if (find.quantity > 1) {
          this.$parent.putJson(`/api/cart/${find.id_product}`, {quantity: -1})
            .then(data => {
              if (data.result) {
                find.quantity--;
                this._cartAmountQuantity();
              }
            });
        } else {
          this.$parent.delJson(`/api/cart/${find.id_product}`)
            .then(data => {
              if (data.result) {
                this.cartItems.splice(this.cartItems.indexOf(find), 1);
                this._cartAmountQuantity();
              }
            });
        }
      }
    },
    clear() {
      this.$parent.getJson(`/api/cart/clear`)
        .then(data => {
          if (data.result) {
            this.cartItems = [];
            this.cartAmount = 0;
            this.cartGoodsQuantity = 0;
          }
        });
    },
    _cartAmountQuantity() {
      this.cartAmount = 0;
      this.cartGoodsQuantity = 0;
      this.cartItems.forEach((element) => {
        this.cartAmount += element.price*element.quantity;
        this.cartGoodsQuantity += element.quantity;
      });
    },
  },
  mounted() {
    this.$parent.getJson(`/api/cart`)
      .then(data => {
        for (let el of data.contents) {
          this.cartItems.push(el);
        }
        this.cartAmount = data.amount;
        this.cartGoodsQuantity = data.countGoods;
      });
  },
  template: `<div class="header-cart">
                        <span class="link-to-cart" @click="showCart = !showCart">
                            <span class="cart-circle" v-show="cartItems.length"> {{ cartGoodsQuantity }} </span>
                            <img src="img/cart.svg" alt="cart">
                        </span>
                        <div class="cart-dropdown" v-show="showCart">
                          <p class="empty-cart" v-if="!cartItems.length">Cart is empty</p>
                          <div v-else>
                            <ul>
                                <cart-item 
                                v-for="product of cartItems"  
                                :key="product.id_product"
                                :cart-item="product"
                                @remove="remove"></cart-item>
                            </ul>
                            <div class="cart-total">
                                <span>TOTAL</span>
                                <span>$ {{ cartAmount }}</span>
                            </div>
                            <a href="checkout.html" class="cart-checkout">
                                checkout
                            </a>
                            <a href="cart.html" class="cart-go-to-cart">
                                go to cart
                            </a>
                          </div>
                        </div>
                    </div>`
});

Vue.component('cart-item', {
  props: ['cartItem'],
  template: `<li class="cart-item">
                                    <a href="#"><img class="cart-item-img" :src="cartItem.image"></a>
                                    <div class="cart-item-info">
                                        <a class="cart-item-name" href="#">{{ cartItem.product_name }}</a>
                                        <span class="cart-item-rate">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star-half-o"></i>
                                        </span>
                                        <span class="cart-item-price">{{ cartItem.quantity }} x {{ cartItem.price }}$</span>
                                    </div>
                                    <span @click="$emit('remove', cartItem)"><i class="fa fa-times-circle cart-item-delete"></i></span>
                                </li>`
});


Vue.component('cart-page', {
  template: `<div>
                <table class="cart-table">
                    <thead>
                    <tr>
                        <th class="cart-table-head">product deals</th>
                        <th class="cart-table-head">unite price</th>
                        <th class="cart-table-head">quantity</th>
                        <th class="cart-table-head">shipping</th>
                        <th class="cart-table-head">subtotal</th>
                        <th class="cart-table-head">action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <cart-page-item 
                                v-for="product of $root.$refs.cart.cartItems"  
                                :key="product.id_product"
                                :cart-item="product"
                               ></cart-page-item>
                    </tbody>
                </table>
                <div class="cart-buttons">
                    <a href="#" class="cart-button" @click.prevent="$root.$refs.cart.clear()">
                        CLEAR SHOPPING CART
                    </a>
                    <a href="catalog.html" class="cart-button">
                        cONTINUE sHOPPING
                    </a>
                </div>
                <div class="cart-forms">
                    <div class="cart-form">
                        <p class="cart-form-header">
                            Shipping Adress
                        </p>
                        <div name="city" id="city" class="cart-form-input">
                            <span>Bangladesh</span>
                            <i class="fa fa-caret-down"></i>
                            <ul class="city-list">
                                <li><a href="#">Bangladesh</a></li>
                                <li><a href="#">Bangladesh</a></li>
                                <li><a href="#">Bangladesh</a></li>
                            </ul>
                        </div>
                        <input class="cart-form-input" type="text" name="state" placeholder="State">
                        <input class="cart-form-input" type="text" name="zipcode" placeholder="Postcode / ZIP">
                        <a href="#" class="cart-form-button">get quote</a>
                    </div>
                    <div class="cart-form">
                        <p class="cart-form-header">
                            Coupon discount
                        </p>
                        <p class="cart-form-text">
                            Enter your coupon code if you have one
                        </p>
                        <input class="cart-form-input" type="text" name="coupon_code" placeholder="Coupon code">
                        <a href="#" class="cart-form-button">apply coupon</a>
                    </div>
                    <div class="cart-form">
                        <p class="cart-sub">
                            subtotal <span>$ {{ $root.$refs.cart.cartAmount }}</span>
                        </p>
                        <p class="cart-form-header">
                            grand total <span>$ {{ $root.$refs.cart.cartAmount }}</span>
                        </p>
                        <a href="checkout.html" class="cart-checkout-button">proceed to checkout</a>
                    </div>
                </div>
            </div>`
});

Vue.component('cart-page-item', {
  props: ['cartItem'],
  template:      `<tr>
                        <td class="cart-table-row">
                            <div class="cart-product">
                                <a href="product.html">
                                    <div class="cart-product-img">
                                        <img :src="cartItem.image" alt="text">
                                    </div>
                                </a>
                                <div class="product-text">
                                    <a class="product-link" href="product.html">
                                        {{ cartItem.product_name }}
                                    </a>
                                    <p class="product-option-text">Color: <span>Red</span></p>
                                    <p class="product-option-text">Size: <span>XXL</span></p>
                                </div>
                            </div>
                        </td>
                        <td class="cart-table-row">$ {{ cartItem.price }}</td>
                        <td class="cart-table-row"><input type="number" name="product_quantity" @keyup="$root.$refs.cart.update(cartItem)" v-model="cartItem.quantity"></td>
                        <td class="cart-table-row">FREE</td>
                        <td class="cart-table-row">$ {{ cartItem.quantity*cartItem.price }}</td>
                        <td class="cart-table-row"><span @click="$root.$refs.cart.remove(cartItem)"><i class="fa fa-times-circle cart-item-delete"></i></span></td>
                    </tr>`
});