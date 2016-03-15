Rails.application.routes.draw do
  root :to => 'pages#search'
  get '/search' => 'pages#search'
end
