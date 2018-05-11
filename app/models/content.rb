class Content < ApplicationRecord
serialize :headers , Array
serialize :links , Array

belongs_to :url

#Validations
validates_presence_of :headers,:links


end
