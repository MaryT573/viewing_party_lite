require 'rails_helper'

RSpec.describe 'Landing Page', type: :feature do
  let!(:user1) { value1 = FactoryBot.create(:user) }
  let!(:user2) { value2 = FactoryBot.create(:user) }
  let!(:user3) { value3 = FactoryBot.create(:user) }
  
  before(:each) do
    visit "/users/#{user1.id}"
  end

  it 'should show the users name' do
    expect(page).to have_content(user1.username)
    expect(page).not_to have_content(user2.username)
  end

  it 'should have a link to go back to the landing page at the top of the page' do
    expect(page).to have_link('Viewing Party!', href: '/')
  end

  it 'should have a link to discover movies' do
    expect(page).to have_link("Discover Movies")
  end
end