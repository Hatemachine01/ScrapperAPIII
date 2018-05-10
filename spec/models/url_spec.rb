require 'rails_helper'
RSpec.describe Url, type: :model do
  describe "Creation" do 
  	before do 
  		@url = FactoryGirl.create(:url)
	end

   it "cannot be created without an url" do 
   	@url.url = nil


   	expect(@url).not_to be_valid
   end


   it "Cannot be created with a invalid url" do 
    @url.url = 'ww.invalidurls.con'


    expect(@url).not_to be_valid
   end

   it "URL must include http/s" do 
    @url.url = 'www.invalidurls.com'


    expect(@url).not_to be_valid
   end


   it "has one content" do 
   	relation = described_class.reflect_on_association(:content)
    	
    expect(relation.macro).to eq(:has_one)
   end
  end
end


