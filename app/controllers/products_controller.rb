class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @cart_item = CartItem.new
    @product = Product.friendly.find(params[:id])
  end

  def create
    raise
  end
end
