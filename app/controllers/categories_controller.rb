class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    @link = Link.new(category_params)
    if @category.save
      redirect_to :root
    else @link.save
      redirect_to category_path
    end
  end

  def show
    @links = Link.all
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

end
