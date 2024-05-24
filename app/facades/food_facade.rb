class FoodFacade
  attr_reader :food

  def food_search(food_name)
    service = FoodService.new.search(food_name)
    
    foods = service.map do |food_data|
      Food.new(food_data)
    end

    foods.compact
  end
end