class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @products = Product.all
    # for each prduct, get all the reviews, then average that. 
  end

  def about
  end

  def contact
  end

  def education
  end
end
