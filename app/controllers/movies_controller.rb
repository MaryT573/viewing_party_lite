class MoviesController < ApplicationController
  def index; end

  def search 
    # @movies = MovieFacade.search_movies(params[:search]) 
  end

  def show
    if params[:search]
      @movies = MovieFacade.search_movies(params[:search])
    else
      @movies = MovieFacade.search_trending
    end
  end
end