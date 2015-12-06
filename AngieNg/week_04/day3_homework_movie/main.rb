require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'


get '/' do
  erb :home
end


get '/movie' do
  @movie_title = params[:movie_title]
  @movie_url = "http://omdbapi.com/?t=#{@movie_title}"
  movie_info = HTTParty.get @movie_url
  @poster = movie_info['Poster']

  erb :movie
end


get '/search' do
  @movie_title = params[:movie_title]
  movies_search_url = "http://omdbapi.com/?s=#{@movie_title}"
  movies_search_result = HTTParty.get movies_search_url
  @movies_result_list = movies_search_result['Search'].collect {|movies| movies['Title']}
  @movies_url = movies_search_result['Search'].collect {|movies| "http://omdbapi.com/?t=" + movies['Title'] }

  redirect to "/movie?movie_title=#{@movie_title}" if @movies_result_list.length == 1
  
  erb :search
end