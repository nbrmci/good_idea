Rails.application.routes.draw do
  devise_for :users
  root to: 'goods#index'
  resources :goods, only: :index
  resources :items
end