class MovieService
    def self.movies(title)
        response = conn.get("api_key=#{api_key}")
        json = JSON.parse(response.body, symbolize_names: true)
    end
      
    def self.conn
        Faraday.new(
          url: 'https://api.themoviedb.org/3/search/movie/'
          params: api_key = ENV["MOVIES_API_KEY"] 
          ) do |faraday|
            faraday.adapter Faraday.default_adapter
        end
      end
end