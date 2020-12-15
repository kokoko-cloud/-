Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'pages/help'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'pages/help'
  root 'pages#index'
end

Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'pages#index'
  get 'pages/help'
end

Rails.application.routes.draw do
  get 'sessions/new'
  
  root 'pages#index'
  get 'pages/help'
  
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :topics
end

