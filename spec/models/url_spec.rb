require 'rails_helper'
RSpec.describe Url, type: :model do
  describe "Creation" do 
  	before do 
  		@url = FactoryGirl.create(:url)
	end

   it "cannot be created without all attributes" do 
   	@url.url = nil


   	expect(@url).not_to be_valid
   end


   it "has one content" do 
   	relation = described_class.reflect_on_association(:content)
    	
    expect(relation.macro).to eq(:has_one)
   end
  end
end


