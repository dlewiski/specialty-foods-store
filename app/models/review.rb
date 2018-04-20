class Review <ActiveRecord::Base

  belongs_to :product, optional: true
  validates :product_id, :author, :content_body, :rating, :presence => true

  validates_inclusion_of :rating, in: 1..5
  validates_length_of :content_body, in: 50..250

  def set_product_id
    self.product_id = rand(353..402)
  end
end
