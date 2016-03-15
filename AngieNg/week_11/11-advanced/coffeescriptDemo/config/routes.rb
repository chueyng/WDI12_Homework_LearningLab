Rails.application.routes.draw do

  root :to => 'pages#demo'

  get 'pages/demo'

end
