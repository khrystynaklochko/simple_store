class Admin::CategoriesController < ApplicationController
  respond_to :html
  authorize_resource
  before_action :find_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    redirect_to edit_admin_category_path
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new category_params
    if @category.save
      redirect_to admin_categories_path
    else
      respond_with :admin, @category
    end
  end

  def update
    if @category.update category_params
      redirect_to admin_categories_path
    else
      respond_with :admin, @category
    end
  end

  def destroy
    @category.destroy
    respond_with :admin, @category
  end

private

  def find_category
    @category = Category.friendly.find params[:id]
  end

  def category_sparams
    params.require(:category).permit(:name)
  end
end
