include ActionView::Helpers::NumberHelper

class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :origin, :presence => true

  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost, products.origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
    )}

  scope :most_recent, -> {order(created_at: :desc).limit(3)}

  scope :made_in_USA, -> {where(origin: "USA")}


  def convert_cost
    self.cost = number_to_currency(self.cost)
  end

  def set_origin_USA
    if self.id % 4 == 0
      self.origin = "USA"
    else
      self.origin
    end
  end
end
