require 'rails_helper'

RSpec.describe 'movie index', type: :feature do
  let!(:api_key) { ENV['MOVIES_API_KEY'] }

  describe 'test', :vcr do
    it 'has button to show top movies' do
      stub_request(:get, "https://api.themoviedb.org/3/search/movie?api_key=#{api_key}").to_return(status: 200, body: File.read("./spec/fixtures/single_movie.json"), headers: {}) 
    
    end
  end
end
