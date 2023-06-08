Rails.application.routes.draw do
  get 'items/new'
  devise_for :users
  root to: 'posts#index'
  resources :posts
  resources :items
end
