require 'rails_helper'

RSpec.describe 'URL API INDEX', type: :request do
  # initialize test data 
 @url = FactoryGirl.create(:url)

  # Test suite for GET /url
  describe 'GET /urls' do
    # make HTTP get request before each example
    before { get '/urls' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

end

