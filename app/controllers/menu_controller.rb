class MenuController < ApplicationController
  def index
    @sections = %w(Breakfast Lunch Dinner Drink)
    @sorts = [ 'alphabetical', 'price low to high', 'price high to low', 'most viewed' ]

    @food_items = FoodItem.by_section(params[:section]).sort(params[:sort])    
  end
end
