class MovieService 
  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
  # can search movie, TV show or person
  def self.movies(title)
    response = conn.get do |req|
      req.url("3/search/movie")
      # require 'pry'; binding.pry 
      # req.params['api_key'] = ENV['MOVIES_API_KEY'] 
      # req.params['query'] = title
      req.params = { api_key: ENV['movie_api_key'], query: title, page: 1 }
      require 'pry'; binding.pry 
    end
    # require 'pry'; binding.pry 
      # req.params['page'] = 1
    # end
    JSON.parse(response.body, symbolize_names: true)
    # parse_json(response)
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
      require 'pry'; binding.pry 
      Faraday::FlatParamsEncoder.sort_params = false
      faraday.options.params_encoder = Faraday::FlatParamsEncoder
      # faraday.params['api_key'] = ENV['MOVIES_API_KEY'] 
      faraday.adapter Faraday.default_adapter
    end
  end
end