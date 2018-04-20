class LandingController < ApplicationController
  def index
    @products = Product.all
    @products = @products.most_reviews
  end
end
