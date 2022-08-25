class MovieFacade
  def self.search_movies(title)
    parsed_json = MovieService.movies(title)
    #require pry, binding.pry
    parsed_json[:results].map do |movie_json|
      MoviePoros.new(movie_json)
    end
  end
end