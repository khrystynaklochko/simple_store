class Admin::ProductsController < ApplicationController
  respond_to :html
  authorize_resource
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    redirect_to edit_admin_product_path
  end

  def new
    @product = Product.new
  end

  def edit

  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to admin_products_path
    else
      respond_with :admin, @product
    end
  end

  def update
    if @product.update product_params
      redirect_to admin_products_path
    else
      respond_with :admin, @product
    end
  end

  def destroy
    @product.destroy
    respond_with :admin, @product
  end

private

  def find_product
    @product = Product.find params[:id]
  end

  def product_params
    params.require(:product).permit(:title, :description, :category_id)
  end
end
