class CategoriesController < ApplicationController
  #before_filter :signed_in_consumer

  def index
     @category = Category.new
  end
  
  def create 
    @category = current_user.categories.build(params[:category])
    if @category.save
      flash[:success] = "Category created successfully "
      redirect_to root_url
    else
      flash.now[:error] = "There is error"
      render 'categories/index'
    end
  end 
 
  def show      
    @category = Category.find(params[:id])
  end
end
