Rails.application.routes.draw do
  resources :users
  resources :parcels
  resources :profiles
  get 'sessions/new'

  get "/me", to: "users#show"

  get "/profiles", to: "profiles#index"
  resources :profiles, only: [:index, :show, :create]

  post '/signup', to: 'users#create'

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/users", to: "users#index"

  # resources :users, only: [ :update]
  resources :parcels, only: [:index, :show, :create, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
