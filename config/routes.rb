Rails.application.routes.draw do
  resources :posts
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :comments, only: [:create, :destroy]
  resources :users, only: [:show] 
  post "toggle_like", to: "likes#toggle_like", as: :toggle_like
  root "home#index"

end
