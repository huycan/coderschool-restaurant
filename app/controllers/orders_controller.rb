class OrdersController < ApplicationController
  before_action :current_order
  before_action :redirect_if_inactive, only: [:edit, :update, :deliver]

  def index
    @order.order_items.create(food_item_id: params[:food_item_id])
    
    redirect_to order_path(@order.id)
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @order.update order_params
        format.html { redirect_to @order, notice: 'Food item was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def deliver
    @order.update active: false
    redirect_to order_path(params[:id])
  end

  private
    def current_order
      @order = Order.find params[:id]
      @order = Order.create() if @order.nil?
    end

    def redirect_if_inactive
      if !@order.active
        redirect_to order_path(@order.id)
      end
    end

    def order_params
      params.require(:order).permit(:name, :phone, :address, :email, :coupon)
    end
end
