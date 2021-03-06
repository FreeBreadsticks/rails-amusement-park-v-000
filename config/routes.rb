Rails.application.routes.draw do

  get 'rides/new', to: 'rides#new'
  post 'rides/new', to: 'rides#new'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :attractions
  resources :users
  root 'welcome#index'
end
