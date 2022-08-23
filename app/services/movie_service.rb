class MovieService
  # can search movie, TV show or person
  def self.movies(title)
    response = conn.get("movie/api_key=#{api_key}")
    parse_json(response)
  end
    
  json = JSON.parse(response.body, symbolize_names: true)
    
  def self.conn
    Faraday.new(
      url: 'https://api.themoviedb.org/3/search/'
      params: { api_key: ENV["MOVIES_API_KEY"] }
      ) do |faraday|
        faraday.adapter Faraday.default_adapter
    end
  end
end