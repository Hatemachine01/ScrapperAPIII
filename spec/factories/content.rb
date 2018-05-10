FactoryGirl.define do
 factory :content , class: Content do
  headers ['H1', 'H2', 'H3']
  links  ["http://www.example.com"]
  url
 end
end


