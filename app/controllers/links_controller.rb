class LinksController < ApplicationController
  def create
    @link = Link.create(link_params)
    redirect_to category_path(params[:category_id])
  end

  def destroy
    @category = Category.find(params[:category_id])
    link = @category.links.find(params[:id])
    link.destroy
    redirect_to category_path(params[:category_id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @link = @category.links.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:category_id])
    link = @category.links.find(params[:id])
    link.update(link_params)
    redirect_to category_path(params[:category_id])
  end

  private
  def link_params
    @category = Category.find(params[:category_id])
    params.require(:link).permit(:name, :url, :comment).merge(category_id: "#{@category.id}")
  end
end
