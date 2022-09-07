require 'rails_helper'

RSpec.describe 'user login', type: :feature do

    before(:each) do
        visit "/register"

        fill_in 'Username', with: "Jim"
        fill_in 'Email', with: "Jim@jim.com"
        fill_in 'Password', with: "12345"
        fill_in 'Password confirmation', with: "12345"
        
        click_on 'Submit'
    end

    it 'can recognize and log a user in' do
        visit "login"

        fill_in 'Email', with: "Jim@jim.com"
        fill_in 'Password', with: "12345"

        click_on 'Log In'
        
        expect(page).to have_content("Jim's Dashboard")
        expect(page).to have_content("Welcome back, Jim@jim.com!")
    end

    it 'does sad path: Invailid credentials' do
        visit "login"

        fill_in 'Email', with: "Jim@jim.com"
        fill_in 'Password', with: "12344"

        click_on 'Log In'
        
        expect(page).to have_content('Invalid Credentials')
    end
end