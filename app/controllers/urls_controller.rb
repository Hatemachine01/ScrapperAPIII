class UrlsController < ApplicationController

	def index
		@urls = Url.all
    	json_response(@urls)
	end

end
