require 'rails_helper'

RSpec.describe 'movie show', type: :feature do
  let!(:api_key) { ENV['MOVIES_API_KEY'] }
  let!(:user1) { FactoryBot.create(:user) }
  
  xit 'has button to create viewing party', :vcr do
    # response = MovieFacade.search_movies("Finding Nemo")
    # response = response[0].id
    # #require pry, binding.pry
    # visit "/users/#{user1.id}/movies"
    # click_on "Finding Nemo"
    visit "/users/#{user1.id}/discover"

    fill_in 'search', with: 'Finding Nemo'
    click_on 'Search'

    require 'pry'; binding.pry 
    click_on "Finding Nemo"
 end
    
    it 'has button to return to discover page', :vcr do
        
        
    end
    
    it 'shows movie information', :vcr do

        
    end
end
