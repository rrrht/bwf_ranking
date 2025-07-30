Rails.application.routes.draw do
  root "rankings#index"
  get 'rankings/index'
  
  devise_for :admin_users
  resources :players
  resources :tournaments
  resources :results
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
