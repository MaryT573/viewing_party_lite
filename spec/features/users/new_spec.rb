require 'rails_helper'

RSpec.describe 'create user', type: :feature do
    it 'redirects to user show page once info is filled in' do

        visit "/register"
        expect(current_path).to eq("/register")

        fill_in 'Username', with: "Jim"
        fill_in 'Email', with: "Jim@jim.com"
        fill_in 'Password', with: "12345"
        fill_in 'Password confirmation', with: "12345"
        
        click_on 'Submit'
        
        expect(page).to have_content("Jim's Dashboard")
    end
end