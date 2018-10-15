class CartItemsController < ApplicationController
  def create
    # Review efficiency
    @cart = find_cart { create_cart }
    cart_items_params[:cart_id] = @cart.id
    if @cart_item = CartItem.create!(cart_items_params)
      flash[:notice] = "That's been added to your cart!"
    end    
    redirect_back(fallback_location: cart_path(@cart.id))
  end

  private

  def cart_items_params
    hash = {}
    hash.merge! params.permit(cart_item: [:strength, :volume, :product_id])
  end
end
