include ActionView::Helpers::NumberHelper

class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :cost, :origin, :presence => true

  def convertCost
    self.cost = number_to_currency(self.cost)
  end

  def setOriginUSA
    if self.id % 4 == 0
      self.origin = "USA"
    else
      self.origin
    end
  end
end
