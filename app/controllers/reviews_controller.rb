class ReviewsController < ApplicationController
  respond_to :html
  authorize_resource
  before_action :find_product, only: [:create, :edit, :update, :destroy]
  before_action :find_review,  only: [:edit, :update, :destroy]

  def create
    @review = @product.reviews.new review_params
    @review.user = current_user
    if @review.save
      redirect_to product_path @product
    else
      render 'products/show'
    end
  end

  def update
    if @review.update review_params
      redirect_to product_path @product
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to product_path @product
  end

private

  def find_product
    @product = Product.find params[:product_id]
  end

  def find_review
    @review = Review.find params[:id]
  end

  def review_params
    params.require(:review).permit(:message, :product)
  end
end
