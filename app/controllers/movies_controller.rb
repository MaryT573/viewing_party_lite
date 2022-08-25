class MoviesController < ApplicationController
  def index
    # require 'pry', binding.pry
    
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
    # require 'pry', binding.pry
    @user = User.find(params[:id])
    @url = "https://image.tmdb.org/t/p/w500"
    @movies = MovieFacade.search_movies(params[:search], params[:page])
    render :index
  end

  def show
    #require 'pry', binding.pry
    # @movie = @movies.select {|m| m.id = params[:movie_id] }
    @movie1 = movie_poro(movie_params)
    # @movie = Movie.new(movie_params)
    require 'pry'; binding.pry 
    # @movie = MovieFacade.search_movies(params[:movie][:title])
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
    params.permit(:movie)
    #params.permit(:title, :release_date, :overview, :image_url, :average_rating, :genre, :runtime)
  end
end