class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @order = Order.new
    @product = Product.friendly.find(params[:id])
  end
end
