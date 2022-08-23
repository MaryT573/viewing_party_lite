class MovieFacade
    def self.search_movies(title)
        read = MovieService.movies(title)
    end
end