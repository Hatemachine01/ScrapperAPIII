class UrlResource < JSONAPI::Resource
  attributes :url
  has_one :content
end