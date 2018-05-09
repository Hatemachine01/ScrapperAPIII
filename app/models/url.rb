class Url < ApplicationRecord
include Scraper
has_one :content

#validations
validates_presence_of :url

	def scrape_url(url)
		content = Scraper.get_content(url)
	end

end
