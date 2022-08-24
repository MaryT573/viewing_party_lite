require 'rails_helper'

RSpec.describe 'movie show', type: :feature do
  let!(:api_key) { ENV['MOVIES_API_KEY'] }
  let!(:user1) { value1 = FactoryBot.create(:user) }
  #require pry, binding.pry
    it 'has button to create viewing party', :vcr do
        visit "/users/#{user1.id}/movies"
    end
    
    it 'has button to return to discover page', :vcr do
        #stub_request(:get, "https://api.themoviedb.org/3/search/movie?api_key=#{api_key}").to_return(status: 200, body: File.read("./spec/fixtures/single_movie.json"), headers: {}) 
        
    end
    
    it 'shows movie information', :vcr do
        stub_request(:get, "https://api.themoviedb.org/3/search/movie?api_key=#{api_key}").to_return(status: 200, body: File.read("./spec/fixtures/single_movie.json"), headers: {}) 
        
    end

end
