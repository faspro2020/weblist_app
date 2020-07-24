class CategorysController < ApplicationController
  def index
    @categorys = Category.all
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to :root
  end

  private

  def category_params
    params.require(:category).parmit(:name, :comment)
  end
end
