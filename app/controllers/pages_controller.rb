class PagesController < ApplicationController
  # skip_before_action :authenticate_user!
  def home
    # @cart = find_cart { create_cart }
    @products = Product.all
    @user = User.new
  end

  def about
  end

  def contact
  end

  def education
  end
end
