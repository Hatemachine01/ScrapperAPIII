class Url < ApplicationRecord
include Scraper
has_one :content

#validations
validates_format_of :url, :with => /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,63}(:[0-9]{1,5})?(\/.*)?\z/ix 
validates_presence_of :url

end

#links.map {|element| element["href"]}


