class MovieService
  # can search movie, TV show or person
  def self.movies
    response = conn.get("movie/api_key=#{api_key}")
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
    
  def parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
    
  private
  def self.conn
    Faraday.new(
      url: 'https://api.themoviedb.org/3/search/'
      params: { api_key: ENV["MOVIES_API_KEY"] }
      ) do |faraday|
        faraday.adapter Faraday.default_adapter
    end
  end
end