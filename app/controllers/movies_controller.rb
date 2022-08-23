class MoviesController < ApplicationController
    def index
        @movies = MovieFacade.movies
    end

    def search
        @movie = MovieFacade.search_movies(search)
        render movies_path
    end
end