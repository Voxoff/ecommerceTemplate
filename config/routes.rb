Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'pages/contact'
  get 'pages/about'
  get 'pages/education'
  get 'pages/privacy_policy'
  root to: 'pages#home'
  resources :products, only: [:show, :index]
  resources :cart_items, only: [:show, :create, :index] do
  end
  resources :cart, only: [:show] do
    resources :payments, only: [:new, :create]
  end
  resources :reviews
end
