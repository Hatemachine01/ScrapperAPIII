class ContentResource < JSONAPI::Resource
  attributes :headers, :links
  belongs_to :content
end