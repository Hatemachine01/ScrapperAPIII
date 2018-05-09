class Url < ApplicationRecord
	has_one :content

	#validations
	validates_presence_of :url

end
