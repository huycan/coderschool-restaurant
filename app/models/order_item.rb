class OrderItem < ActiveRecord::Base
  belongs_to :food_item
  belongs_to :order

  validates :food_item, presence: true
  validates :order, presence: true
end
