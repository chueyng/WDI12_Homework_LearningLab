Rails.application.routes.draw do

  root :to => 'pages#home'
  get '/' => 'pages#home'
  get '/movie' => 'pages#movie'
  get '/stock' => 'pages#stock'

  get '/stock/search' => 'stock#search'
  get '/stock/result' => 'stock#result'

  get '/movie/search' => 'movie#search'
  get '/movie/result' => 'movie#result'

end
