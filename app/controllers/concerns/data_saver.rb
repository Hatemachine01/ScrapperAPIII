module DataSaver 
	def store_data(content, url)
		 links = content[1]
		 headers = content[0]
		content = 	Content.create(headers: headers, links: links, url_id: url.id )	
	end
end