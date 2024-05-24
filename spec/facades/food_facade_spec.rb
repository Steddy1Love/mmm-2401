require "rails_helper"

RSpec.describe FoodFacade do
  it "exists" do
    facade = FoodFacade.new
    
    expect(facade).to be_a FoodFacade
  end

  it 'can search for a food' do
    facade = FoodFacade.new
    query = "Sweet Potatoes"
    search = facade.food_search(query)
  
    expect(search).to be_an(Array)
    expect(search.first.brand_owner).to be_a(String) 
    expect(search.first.description).to be_a(String)
  end
end