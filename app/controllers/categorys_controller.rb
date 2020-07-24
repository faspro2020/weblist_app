class CategorysController < ApplicationController
  def index
    @category = Category.all
  end

  def create
    Category.create(category_params)
  end

  private

  def category_params
    params.require(:category).parmit(:name, :comment)
  end
end
