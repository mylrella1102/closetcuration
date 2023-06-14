Rails.application.routes.draw do
  get '/step2', to: 'posts#step2', as: 'step2'
  devise_for :users
  root to: 'posts#index'
  resources :posts
  resources :items
  resources :calendars
  resources :accounts

end
