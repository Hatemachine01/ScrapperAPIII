require 'rails_helper'
RSpec.describe Content, type: :model do
  describe "Creation" do 
  	before do 
  		@content = FactoryGirl.create(:content)
	end

   it "cannot be created without all attributes" do 
   	@content.h1 = nil
    @content.h2 = nil
   	@content.h3 = nil
    @content.a = nil

   	expect(@content).not_to be_valid
   end


   it "has a DB  belongs association to WebAddress" do 
   	  relation = described_class.reflect_on_association(:webaddress)
    	
      expect(relation.macro).to eq(:belongs_to)
   end
  end
end