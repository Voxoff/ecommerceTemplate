class CartItemsController < ApplicationController
  def create
    @cart = Cart.create_cart(current_user)
    product = Product.find(params["cart_item"][:product_id])
    # order  = Order.create!(product_s: product.sku, amount: product.price, state: 'PENDING', user: current_user)
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  private

  def find_cart
    if current_user
      @cart = Cart.find_by(user_id: current_user.id)
    else
      begin
        @cart = Cart.find(session[:cart_id])
      rescue
        flash[:notice] = "Sorry, there's been an error. Please sign in"
      end
    end
    @cart_item = CartItem.create!(cart_id: @cart.id, product_id: params[:order][:product_id])
  end
end
