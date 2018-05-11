module Scraper
#scrapes content form website.
require 'nokogiri'
require "uri"
require 'open-uri'

	def get_content(url)	
		doc = Nokogiri::HTML(open(url))
		headers = doc.css('h1, h2', 'h3').map { |header| header.inner_text}
		links = doc.css('a[href]').map {|link| link["href"]}  
		return headers,links	
	end
end


