Rails.application.routes.draw do
  root :to => 'pages#start'
  resources :movies
end
