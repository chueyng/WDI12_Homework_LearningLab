class MovieController < ApplicationController
  def search
  end

  def result
    @movie_name= params[:movie_name]
    @movie_url = "http://omdbapi.com/?t=#{@movie_name}"
    movie_info = HTTParty.get @movie_url 
    @movie_poster = movie_info['Poster']
    @movie_actors = movie_info['Actors']
    @movie_plot = movie_info['Plot']  
  end
end
