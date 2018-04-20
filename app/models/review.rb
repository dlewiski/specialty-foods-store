class Review <ActiveRecord::Base
  validates :product_id, :author, :content_body, :rating, :presence => true
end
