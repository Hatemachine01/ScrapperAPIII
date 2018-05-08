RSpec.describe WebAddress, type: :model do
  describe "Creation" do 
  	before do 
  		@web_address = FactoryGirl.create(:webaddress)
	end

   it "cannot be nil" do 
   	@web_address.url = nil

   	expect(@web_address).not_to be_valid
   end
  end
end