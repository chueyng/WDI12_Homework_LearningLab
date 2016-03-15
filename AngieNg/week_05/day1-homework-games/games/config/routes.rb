Rails.application.routes.draw do

root :to => 'pages#home'
get '/' => 'pages#home'

get '/magic8' => 'magic8#ask'
get '/magic8/result' => 'magic8#result'

get '/secretnumber' => 'secretnumber#guess'
get '/secretnumber/answer' => 'secretnumber#answer'

get '/games/rock_paper_scissors' => 'rock_paper_scissors#throw'
get '/games/rock_paper_scissors/play' => 'rock_paper_scissors#play'

end
