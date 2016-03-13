class MenuController < ApplicationController
  def index
    @food_items = FoodItem.by_section(params[:section]).sort(params[:sort])
    @sections = %w(Breakfast Lunch Dinner Drink)
    @sorts = [ 'alphabetical', 'price low to high', 'price high to low' ]
  end
end
