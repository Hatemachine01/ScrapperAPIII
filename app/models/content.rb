class Content < ApplicationRecord
  belongs_to :url

#Validations
  validates_presence_of :h1,:h2,:h3,:a


end
