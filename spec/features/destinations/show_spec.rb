# The forecast should include date (weekday, month and day), current, high and low temps in Fahrenheit, and a summary (for example "light rain", "clear sky", etc.)

require 'rails_helper'

describe "As a User, when I visit '/' and I click on a destination" do
  before :each do
    @destination = Destination.create!(
      name: "Denver",
      zip: "80205",
      description: "Mile High City",
      image_url: "https://placehold.it/300x300.png"
    )
  end
    it "then I should be on page '/destinations/:id' and I should see the destination's name, zipcode, description, and current weather" do
      visit root_path

      click_on 'Show'

      expect(current_path).to eq("/destinations/#{@destination.id}")

      within('.city') do
        expect(page).to have_css('.date')
        expect(page).to have_css('.current')
        expect(page).to have_css('.high')
        expect(page).to have_css('.low')
        expect(page).to have_css('.summary')
      end
    end

      it "shows an image related to the current weather at the destination" do
        visit root_path

        click_on 'Show'

        expect(current_path).to eq("/destinations/#{@destination.id}")

        expect(page).to have_css('.gif')
      end
end
