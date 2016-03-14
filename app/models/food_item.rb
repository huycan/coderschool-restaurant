class FoodItem < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  
  scope :by_section, ->(section) { where('section ilike ?', section) if section.present? }
  
  scope :sort_by_alpha, -> { order :name }

  scope :sort_by_cheapest, -> { order price: :asc }

  scope :sort_by_most_expensive, -> { order price: :desc }

  scope :sort_by_order, -> { order views: :desc }
  
  scope :sort, ->(sort) {
    case sort
    when 'Alpha'
      sort_by_alpha
    when 'Cheapest'
      sort_by_cheapest
    when 'Most Expensive'
      sort_by_most_expensive
    when 'Orders'
      sort_by_order
    end
  }

  def img_url
    image_url.present? ? image_url : "http://loremflickr.com/320/240/#{CGI.escape name}"
  end

  def view
    update views: self[:views] + 1
  end

  def order_count
    self[:order_items].count
  end
end
