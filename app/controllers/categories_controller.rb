class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all.order(:name)
  end
  
  def show
    @category = Category.find(params[:id])
    @articles_in_category = @category.articles
  end
  
end
