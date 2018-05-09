class UrlsController < ApplicationController

	def index
		@urls = Url.all
    	json_response(@urls)
	end

	def create
		@url = Url.create!(url_params)
    	json_response(@url)
	end

end
