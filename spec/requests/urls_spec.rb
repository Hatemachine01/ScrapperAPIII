require 'rails_helper'

RSpec.describe 'URL API INDEX', type: :request do
 # initialize test data 
 @url = FactoryGirl.create(:url)

  # Test suite for GET /url
  describe 'GET /urls' do
    before { get '/urls' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

     it 'returns lists of urls' do
      expect(json).not_to be_empty
    end
  end

  # Test suite for POST /url
  describe 'POST /urls' do
    let(:valid_attributes) { { url: 'https://www.example.com' } }
    before { post '/urls', params: valid_attributes }
    
    it 'creates a url' do 
      expect(response).to have_http_status(200)
    end
  end
end

