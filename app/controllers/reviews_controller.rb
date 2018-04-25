class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(product_params)
    @review.product_id = @product.id
    if @review.save
      flash[:notice] = "Review successfully added"
      redirect_to product_path(@product)
    else
      render :new
    end
  end


  private

  def product_params
    params.require(:review).permit(:author, :content_body, :rating)
  end
end
