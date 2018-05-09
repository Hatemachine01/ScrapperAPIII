class UrlsController < ApplicationController
	include DataSaver
	def index
		@urls = Url.all
    	json_response(@urls)
	end

	def create
		@url = Url.create!(url_params)
		#Call Parser Module
		page_content = @url.get_content(@url.url)
		store_data(page_content, @url)
		json_response(@url.content)
	end

private

  def url_params
    params.permit(:url)
  end
end
