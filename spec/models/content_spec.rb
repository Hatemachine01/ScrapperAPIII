require 'rails_helper'
RSpec.describe Content, type: :model do
  describe "Creation" do 
  	before do 
  		@content = FactoryGirl.create(:content)
	end

   it "cannot be created without all attributes" do 
   	@content.headers = nil
    @content.links = nil

   	expect(@content).not_to be_valid
   end
  end
end