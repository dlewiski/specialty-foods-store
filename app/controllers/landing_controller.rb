class LandingController < ApplicationController
  def index
    @products = Product.all
    @reviewedProducts = @products.most_reviews
    @recentProducts = @products.most_recent
    @USAProducts = @products.made_in_USA
  end
end
