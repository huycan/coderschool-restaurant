class MenuController < ApplicationController
  def index
    @sections = %w(Breakfast Lunch Dinner Drink)
    @sorts = [ 'Alpha', 'Cheapest', 'Most Expensive', 'Orders' ]

    @food_items = FoodItem.by_section(params[:section]).sort(params[:sort])    
  end
end
