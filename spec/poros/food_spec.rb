require "rails_helper"

RSpec.describe Food do
  it "exists" do
    attrs = {
      gtinUpc: "685561651681",
      description: "This is a food you can drink",
      brandOwner: "Nuka",
      ingredients: "Cola, Radiation"
    }

    food = Food.new(attrs)

    expect(food).to be_a Food
    expect(food.gtinupc).to eq("685561651681")
    expect(food.description).to eq("This is a food you can drink")
    expect(food.brand_owner).to eq("Nuka")
    expect(food.ingredients).to eq("Cola, Radiation")
  end
end