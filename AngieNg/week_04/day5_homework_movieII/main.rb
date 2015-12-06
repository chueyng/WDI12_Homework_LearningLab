require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'active_record'
require 'pry'
require 'httparty'


ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'movies.db'
)


after do
  ActiveRecord::Base.connection.close
end

class Movie < ActiveRecord::Base

end

get '/pry' do
  binding.pry
end


get '/' do
  erb :home
end

get '/movie' do
  movie = Movie.find_by_title params[:movie_title]
  if movie.nil?
    @movie_title = params[:movie_title]
    @movie_url = "http://omdbapi.com/?t=#{@movie_title}"
    movie_info = HTTParty.get @movie_url   

    if (movie_info['Response'] == "True")
      @movie_title = movie_info['Title']
      movie_imdbID = movie_info['imdbID']
      @movie_poster = movie_info['Poster']
      @movie_actors = movie_info['Actors']
      @movie_plot = movie_info['Plot']

      movie = Movie.new
      movie.imdbID = movie_imdbID 
      movie.title = @movie_title
      movie.poster = @movie_poster
      movie.actors = @movie_actors
      movie.plot = @movie_plot

      movie.save
    else
      @movie_message = "No record found in OMDB!"
    end
  else
    @movie_title = movie.title
    movie_imdbID = movie.imdbID
    @movie_poster = movie.poster
    @movie_actors = movie.actors
    @movie_plot = movie.plot
  end
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