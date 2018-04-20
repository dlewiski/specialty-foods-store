class Review <ActiveRecord::Base
  belongs_to :product
  validates :product_id, :author, :content_body, :rating, :presence => true
end
