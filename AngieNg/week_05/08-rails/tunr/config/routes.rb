Rails.application.routes.draw do
  get 'session/new'

  get 'users/new'

  root :to => 'pages#demo'
  get '/hamldemo' => 'pages#demo' 
  get '/bootstrapdemo' => 'pages#bootstrap'

  get '/users/edit' => 'users#edit'
  resources :users, :except => [:edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
