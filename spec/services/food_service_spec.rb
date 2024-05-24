require "rails_helper"

RSpec.describe "Food Service" do
  it 'exists' do
    service = FoodService.new

    expect(service).to be_a FoodService
  end

  describe "#foods", :vcr do
    it "returns array of foods data" do
      foods = FoodService.new.search("Sweet Potatoes")
      food1 = foods.first
      food2 = foods.second

      expect(foods).to be_an(Array)
      expect(foods.count).to eq(10)
      expect(food1).to have_key(:description)
      expect(food1).to have_key(:gtinUpc)
      expect(food1).to have_key(:brandOwner)
      expect(food1).to have_key(:ingredients)

      expect(food2).to have_key(:description)
      expect(food2).to have_key(:gtinUpc)
      expect(food2).to have_key(:brandOwner)
      expect(food2).to have_key(:ingredients)
    end
  end
end