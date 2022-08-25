class MovieFacade
  def self.search_movies(title)
    parsed_json = MovieService.movies(title)
      parsed_json[:results].map do |movie_json|
        Movie.new(movie_json)
      end
  end

  def self.search_trending
    parsed_json = MovieService.trending_movies
    parsed_json[:results].map do |movie_json|
      Movie.new(movie_json)
    end
  end
end