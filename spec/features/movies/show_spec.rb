require 'rails_helper'

RSpec.describe 'movie show', type: :feature do
  let!(:api_key) { ENV['MOVIES_API_KEY'] }
  let!(:user1) { value1 = FactoryBot.create(:user) }
  #require pry, binding.pry
    it 'has button to create viewing party', :vcr do
        movie = MovieService.movies("Finding Nemo")
        visit "/users/#{user1.id}/movies/#{}"
    end
    
    it 'has button to return to discover page', :vcr do
        
        
    end
    
    it 'shows movie information', :vcr do

        
    end
end
