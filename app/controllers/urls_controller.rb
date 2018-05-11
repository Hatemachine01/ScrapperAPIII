class UrlsController < JSONAPI::ResourceController
	include DataSaver
	include Response
	include Scraper
	
	
	def create
		@url = Url.create!(url_params)
		#Calls Parser Module
		page_content = get_content(@url.url)
		#Calls Module that saves data 
		store_data(page_content, @url)
		#returns content of URL 
		json_response(@url.content)
	end

private

  def url_params
    params.permit(:url)
  end
end


