class CategoriesController < ApplicationController

  def show
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category].permit(:title, :color))
    if @category.save
      redirect_to categories_path
    else
      render 'new'
    end
  end

end
