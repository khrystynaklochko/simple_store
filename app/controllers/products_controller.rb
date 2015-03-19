class ProductsController < ApplicationController
  def show
    @product  = Product.find params[:id]
    @category = @product.category
    @review   = @product.reviews.new
  end
end