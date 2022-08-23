require 'rails_helper'

RSpec.describe 'movie index', type: :feature do
    let!(:stub_request) 
    { stub_request(:get, "https://api.themoviedb.org/3/search/movie?api_key=#{api_key}").to_return(status: 200, body: File.read("./spec/fixtures"), headers: {}) }

    describe 'test', :vcr do
        it 'has button to show top movies' do
        end
    end
end