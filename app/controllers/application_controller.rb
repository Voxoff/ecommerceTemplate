class ApplicationController < ActionController::Base
  protect_from_forgery
  # skip_before_action :authenticate_user!

  # def find_or_create_cart
  #   if current_user
  #     @cart = Cart.find_by(user_id: current_user.id)
  #     @cart ||= Cart.create(user_id: current_user.id)
  #   else
  #     @cart = Cart.find(session[:cart_id])
  #     @cart ||= Cart.create
  #     session[:cart_id] ||= @cart.id
  #   end
  #   @cart
  # end

  def find_cart
    if current_user
      @cart = Cart.find_by(user_id: current_user.id, active: true)
    else
      @cart = Cart.find(session[:cart_id])
    end
    @cart ||= yield if block_given?
    @cart
  end

  def create_cart
    if current_user
      @cart = Cart.create(user_id: current_user.id)
    else
      @cart = Cart.create
      session[:cart_id] ||= @cart.id
    end
    @cart
  end
end
