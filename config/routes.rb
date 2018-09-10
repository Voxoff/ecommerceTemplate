Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  get 'pages/contact'
  get 'pages/about'
  root to: 'pages#home'
  resources :products, only: [:show, :index]
  resources :orders
  resources :reviews

end
