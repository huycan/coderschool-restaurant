class FoodItem < ActiveRecord::Base
  scope :by_section, ->(section) { section.present? ? where('section ilike ?', section) : all }
  
  scope :sort, ->(sort) {
    case sort
    when 'alphabetical'
      order(:name)
    when 'price low to high'
      order(price: :asc)
    when 'price high to low'
      order(price: :desc)
    else
      all
    end
  }

  def img_url
    image_url.present? ? image_url : "http://loremflickr.com/320/240/#{name}"
  end
end
