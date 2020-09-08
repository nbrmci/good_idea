Rails.application.routes.draw do
  root to: 'goods#index'
  resources :goods, only: :index
end