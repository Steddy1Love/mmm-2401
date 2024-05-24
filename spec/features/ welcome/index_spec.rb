require "rails_helper"

RSpec.describe "Welcome search page", type: :feature do
  it "can search for a specific food" do
    visit root_path
    
    fill_in(:q, with: "Sweet Potatoes")
    click_button("Search")

    expect(current_path).to eq(food_path)
  end
end