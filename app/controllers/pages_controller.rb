class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    # @disable_nav = true
    @products = Product.all
    @user = User.new
    # for each prduct, get all the reviews, then average that. 
  end

  def about
  end

  def contact
  end

  def education
  end
end
