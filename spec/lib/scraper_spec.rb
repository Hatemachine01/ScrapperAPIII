require "rails_helper"

RSpec.describe Scraper, :type => :helper do
  describe "#get_content" do
    it "returns header and links" do
    helper.get_content("http:" +"//www.hotmail.com")
    
    expect(helper.get_content).to eq("RSpec is your friend")
    end
  end
end
