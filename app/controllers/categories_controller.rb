class CategoriesController < ApplicationController
  before_action :view_parts, only: [:index, :show]

  def index
    @categories = Category.all
  end

  def create
    @category = Category.create(category_params)
    @category.save
    redirect_to :root
  end

  def show
    @category = Category.find(params[:id])
    @link = @category.links.new(params[:category_id])
    @links = @category.links.all
  end

  def destroy 
    category = Category.find(params[:id])
    category.destroy
    render :index
  end

  private
  def category_params
    params.permit(:name, :comment)
  end
  
  def view_parts
    @user = "ユーザー名 (サインイン・マイページ)"
    @title = "My Web list"
  end
end
