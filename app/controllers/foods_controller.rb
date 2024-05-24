class FoodsController < ApplicationController
  def index
    @facade = FoodFacade.new.food_search(params[:q])
  end
end