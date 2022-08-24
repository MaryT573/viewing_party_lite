require 'rails_helper'

RSpec.describe 'movie show', type: :feature do
  let!(:api_key) { ENV['MOVIES_API_KEY'] }
  let!(:user1) { value1 = FactoryBot.create(:user) }
  
  it 'has button to create viewing party', :vcr do
    response = MovieFacade.search_movies("Finding Nemo")
    response = response[0].id
    #require pry, binding.pry
    visit "/users/#{user1.id}/movies/#{response}"
 end
    
    it 'has button to return to discover page', :vcr do
        
        
    end
    
    it 'shows movie information', :vcr do

        
    end
end
