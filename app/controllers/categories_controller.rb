class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    if @category = Category.create!(category_params)
      redirect_to categories_path(@category)
    else
      render 'categories/new'
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    if @category = Category.update(category_params)
      redirect_to categories_path
    else
      render edit_category_path
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  private

    def category_params
      params.require(:category).permit(:brand, :model)
    end
end
