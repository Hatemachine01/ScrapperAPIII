module Scraper
require 'nokogiri'
require "uri"
require 'open-uri'

	def get_content(url)
		
		doc = Nokogiri::HTML(open(url))
	p	headers = doc.css('h1, h2', 'h3').text
		links = doc.css('a[href]')  	
	p	links_final =  links.map {|element| element["href"]}
	end
end