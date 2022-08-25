class MoviesController < ApplicationController
  def index; end

  def show
    @movies = MovieFacade.search_movies(params[:search])
  end

  def search
    @movies = MovieFacade.search_movies(params[:search])
    render search_movies_path
  end
end