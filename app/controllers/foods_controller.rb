class FoodsController < ApplicationController
  def index
    binding.pry
    @facade = FoodFacade.new.food_search(params[:q])
  end
end