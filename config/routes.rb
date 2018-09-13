Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'pages/contact'
  get 'pages/about'
  root to: 'pages#home'
  resources :products, only: [:show, :index]
  resources :orders, only: [:show, :create, :index] do
    resources :payments, only: [:new, :create]
  end
  resources :reviews
end
