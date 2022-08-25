class MoviePoros
  attr_reader :movie_data

  def initialize(movie_data)
    @movie_data = movie_data
  end

  def title
    @movie_data[:title]
  end

  def id
    @movie_data[:id]
  end

  def release_date
    @movie_data[:release_date]
  end

  def overview
    @movie_data[:overview]
  end

  def image_url
    @movie_data[:image_url]
  end

  def average_rating
    @movie_data[:vote_average]
  end

  def genre
    @movie_data[:genre][:name]
  end

  def runtime
    @movie_data[:runtime]
  end
end