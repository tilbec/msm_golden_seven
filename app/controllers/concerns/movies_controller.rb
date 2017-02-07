class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    render("index.html.erb")
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)
    render("show.html.erb")
  end

  def destroy
    id = params[:id]
    movie = Movie.find(id)
    movie.destroy

    redirect_to("/movies")
  end

end
