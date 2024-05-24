require "rails_helper"

RSpec.describe "Food index page", type: :feature do
  it "displays each food attributes" do
    visit root_path

    fill_in(:q, with: "Sweet Potatoes")
    click_button("Search")

    expect(page).to have_content("10 Results")
  end
end