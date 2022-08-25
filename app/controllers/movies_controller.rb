class MoviesController < ApplicationController
  def index
    @user = User.find(params[:id])
    @url = "https://api.themoviedb.org"
  end 

  def trending
    @user = User.find(params[:id])
    @url = "https://image.tmdb.org/t/p/w500"
    @movies = MovieFacade.search_trending
    render :index
  end

  def search
    @user = User.find(params[:id])
    @url = "https://image.tmdb.org/t/p/w500"
    @movies = MovieFacade.search_movies(params[:search], params[:page])
    render :index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @user = current_user
    @movie = Movie.new
  end

  def create
    @user = current_user
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to user_movies_path(@user)
    else
      render :new
    end
  end

  private
  def movie_params
    params.permit(:title, :release_date, :overview, :image_url, :average_rating, :genre, :runtime)
  end
end