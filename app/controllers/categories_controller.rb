class CategoriesController < ApplicationController
  def index
    @products = Product.all
    render :show
  end

  def show
    @category = Category.friendly.find params[:id]
  end
end