class UrlsController < ApplicationController

	def index
		@urls = Url.all
    	json_response(@urls)
	end

	def create
		@url = Url.create!(url_params)
		#Call Parser Module
		content = @url.get_content(@url.url)
	end

private

  def url_params
    params.permit(:url)
  end
end
