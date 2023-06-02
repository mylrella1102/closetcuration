Rails.application.routes.draw do
  get 'items/new'
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create]
  resources :items, only: [:index, :new, :create]
end
