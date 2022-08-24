class MovieService 
  # can search movie, TV show or person
  # def self.movies(title)
  #   response = conn.get do |req|
  #     req.url("3/search/movie")
  #     req.params = { api_key: Figaro.env.movie_api_key, query: title, page: 1 }
  #  end
  #   parse_json(response) if response != nil
  # end

  def self.movies(title)
    response = conn.get("3/search/movie?query=#{title}&api_key=#{ENV['MOVIES_API_KEY']}")
    result = JSON.parse(response.body, symbolize_names: true)
  end

  def self.trending_movies
    response = conn.get("3/trending/movie/week")
    parse_json(response)
  end

  def self.tv_shows
    response = conn.get("tv/api_key=#{api_key}")
    parse_json(response)
  end

  def self.person
    response = conn.get("person/api_key=#{api_key}")
    parse_json(response)
  end
    
  private
  def self.conn
    Faraday.new("https://api.themoviedb.org") do |faraday|
      Faraday::FlatParamsEncoder.sort_params = false
      faraday.options.params_encoder = Faraday::FlatParamsEncoder
      faraday.adapter Faraday.default_adapter
    end
  end
end