class OrdersController < ApplicationController
  before_action :current_order

  def index
    @order.order_items.create(food_item_id: params[:food_item_id])
    
    redirect_to order_path(@order.id)
  end

  def show
  end

  def update
    @order.update order_params
  end

  private
    def current_order
      @order = Order.current()
      @order = Order.create() if @order.nil?
    end

    def order_params
      params.require(:order).permit(:name, :phone, :address, :email, :coupon)
    end
end
