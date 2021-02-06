Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
  resources :rooms, only: [:new, :create]
  resources :users, only: [:edit, :update]
end
