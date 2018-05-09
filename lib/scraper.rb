module Scraper
require 'nokogiri'
require "uri"
require 'open-uri'

	def get_content(url)	
		doc = Nokogiri::HTML(open(url))
		headers = doc.css('h1, h2', 'h3')
		links = doc.css('a[href]')  
		return headers,links	
	end
end