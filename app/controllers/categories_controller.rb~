class CategoriesController < ApplicationController
  #before_filter :signed_in_consumer

  def index
     @categories = Category.all
  end
  
  def create 
    @category = current_user.categories.build(params[:category])
    if @category.save
      flash.now[:success] = "Category created successfully "
      redirect_to categories_path
    else
      render 'categories/new'
    end
  end 
  
  def edit
    @category = current_user.categories.find_by_id(params[:id])
    @category = Category.find(params[:id])
  end
 
  def new     
    @category= Category.new
  end
  
  def show
    @category = current_user.categories.find_by_id(params[:id])
    @category = Category.find(params[:id])
    @products = @category.products
  end
  
  def destroy
    @category = current_user.categories.find_by_id(params[:id])
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end
  
  def update
    @category = current_user.categories.find_by_id(params[:id])
    @category = Category.find(params[:id])
      if @category.update_attributes(params[:category])
        flash.now[:success] = "Category updated successfully "            
	redirect_to @category
      else 
        render 'categories/edit'
      end
  end
end
