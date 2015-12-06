require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# get '/hello' do
#   "Hello, World, You Looking Fine"
# end

# get '/goodbye' do
#   "Goodbye"
# end


# get '/tegan' do
#   "Hello Tegan"
# end

# get '/brydie' do
#   "Oh it's you Brydie"
# end

# get '/katie' do
#   "..."
# end

top = '<html><body><img src="http://fillmurray.com/800/400"><h1>'
bottom = '</h1></body></html>'



get '/hello/:first/:last' do
  top + "Hello #{ params[:first]} #{ params[:last] }" + bottom
end

get '/hello/:first/:last/:age' do
#  binding.pry
  "Hello #{ params[:first]} #{ params[:last]}. You are #{params[:age]}"
end

get '/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "The result is #{ result }"
end

get '/hello/:name' do
  "Hello #{params[:name].capitalize}"
end

get '/time' do
  Time.now.to_s
end

get '/fortune' do
  top + `fortune -a` + bottom
end