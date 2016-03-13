class Order < ActiveRecord::Base
  has_many :order_items

  before_save :update_price

  def price
    order_items.collect { |oi| oi.food_item.price }.sum * coupon_2_discount + 20000
  end

  def delivered
    self[:active] = false
  end

  private
    def update_price
      self[:price] = price
    end

    def coupon_2_discount
      case self[:coupon]
      when 'CODERSCHOOL'
        0.5
      when 'DORAEMON'
        0.1
      when 'NEO'
        0
      else
        1
      end
    end
end
