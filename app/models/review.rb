class Review <ActiveRecord::Base

  belongs_to :product
  validates :product_id, :author, :content_body, :rating, :presence => true

  validates_inclusion_of :rating, in: 1..5
  validates_length_of :content_body, in: 50..250
end
