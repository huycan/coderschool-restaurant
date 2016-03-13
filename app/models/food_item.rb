class FoodItem < ActiveRecord::Base
  scope :by_section, ->(section) { where('section ilike ?', section) if section.present? }
  
  scope :sort_by_alpha, -> { order :name }

  scope :sort_by_cheapest, -> { order price: :asc }

  scope :sort_by_most_expensive, -> { order price: :desc }

  scope :sort_by_view, -> { order views: :desc }
  
  scope :sort, ->(sort) {
    case sort
    when 'alphabetical'
      sort_by_alpha
    when 'price low to high'
      sort_by_cheapest
    when 'price high to low'
      sort_by_most_expensive
    when 'most viewed'
      sort_by_view
    end
  }

  def img_url
    image_url.present? ? image_url : "http://loremflickr.com/320/240/#{CGI.escape name}"
  end

  def view
    update views: self.views + 1
  end
end
