class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def create
    @category = Category.create(category_params)
    @link = Link.new(link_params)
    if @category.save
      redirect_to :root
    else @link.save
      redirect_to category_path
    end
  end

  def show
    @links = Link.includes(:category)
    @link = Link.find(params[:id])
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

  def link_params
    params.require(:link).permit(:name, :url, :comment)
  end
end
