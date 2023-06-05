Rails.application.routes.draw do
  get 'items/new'
  devise_for :users
  root to: 'items#index'
  resources :posts, only: [:index, :new, :create, :show]
  resources :items, only: [:index, :new, :create, :show]
end
