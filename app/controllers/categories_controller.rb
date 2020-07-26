class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      redirect_to :root
    end
  end

  def show
    @category = Category.find(params[:id])
    @links = Link.all
    @link = @category.links.new(params[:category_id])
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
