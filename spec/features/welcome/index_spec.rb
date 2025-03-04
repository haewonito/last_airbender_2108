require "rails_helper"

RSpec.describe "benders", type: :feature do
  describe "as a user, when I visit welcome page ('/')" do
    before(:each) do
      visit "/"

      select 'Fire Nation', from: :nation
      click_on 'Search For Members'
    end

    it "takes me to a search page" do
      expect(current_path).to eq("/search")
      save_and_open_page
    end

    xit "shows me the total number of people in the Fire Nation" do  #should be close to 100
      expect(page).to have_content("some number")
    end

    xit "shows me a list with detailed information for the first 25 members" do
      expect(page).to have_content("")

    end
  end
end
