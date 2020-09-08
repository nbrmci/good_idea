Rails.application.routes.draw do
  devise_for :users
  root to: 'goods#index'
  resources :goods, only: :index
  resources :items do
    post 'add' => 'likes#create'
    delete '/add' => 'likes#destroy'
  end
end