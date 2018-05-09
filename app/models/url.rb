class Url < ApplicationRecord
include Scraper
has_one :content

#validations
validates_presence_of :url

end

#links.map {|element| element["href"]}

