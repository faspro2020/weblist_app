class CategorysController < ApplicationController
  def index
    @category = Category.all
  end
end
