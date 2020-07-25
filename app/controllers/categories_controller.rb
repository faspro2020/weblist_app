class CategoriesController < ApplicationController
  before_action :set_category, only: [:index]

  def index
  end

  def create
    @category = Category.create(category_params)
    redirect_to :root
  end

  def show
  end

  def destroy
    category = Category.find(params[:id])
    if category.destroy
      redirect_to :root
    end
  end

  private
  def category_params
    params.permit(:name, :comment)
  end

  def set_category
    @categories = Category.all
  end

end
