Rails.application.routes.draw do
  
  get '/oceans' => 'oceans#index'
  get '/oceans/new' => 'oceans#new'
  post '/oceans' => 'oceans#create'

  get '/oceans/:id' => 'oceans#show'

  get '/oceans/:id/edit' => 'oceans#edit'
  post '/oceans/:id' => 'oceans#update'

  delete '/oceans/:id' => 'oceans#delete'

end
