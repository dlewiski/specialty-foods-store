class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @product = Product.find(params[:product_id])
  end

  def create
    @review = Review.new(product_params)
    if @review.save
      flash[:notice] = "Review successfully added"
      redirect_to products_path
    else
      render :new
    end
  end


  private

  def product_params
    params.require(:product).permit(:name, :cost, :origin)
  end
end
end
