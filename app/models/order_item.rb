class OrderItem < ActiveRecord::Base
  belongs_to :food_item
  belongs_to :order

  validate :food_item, presence: true
  validate :order, presence: true
end
