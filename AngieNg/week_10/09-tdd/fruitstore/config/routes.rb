Rails.application.routes.draw do
  resources :fruits, :only => [:index, :create, :show]
  # resources :fruits

end
