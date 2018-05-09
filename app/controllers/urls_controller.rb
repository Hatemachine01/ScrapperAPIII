class UrlsController < ApplicationController

	def index
		@urls = Url.all
    	json_response(@urls)
	end

	def create
		@url = Url.create!(url_params)
    	json_response(@url)
    	p url_params
	end

private

  def url_params
    params.permit(:url)
  end
end
