module DataSaver 
	def store_data(content, url)
		links = content[1].map {|element| element["href"]}
		p headers = content[0].text.split()
		content = 	Content.create(headers: headers, links: links, url_id: url.id )	
	end
end