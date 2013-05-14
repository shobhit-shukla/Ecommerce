class SubCategoriesController < ApplicationController
 
  def index 
   #@sub=SubCategory.where({:category_id => session[:category_id]})
   @sub=SubCategory.where({:store_id => session[:store_id]})
  end
 
  def create
   @sub = SubCategory.new({:title =>params[:sub_category][:title] ,:description =>params[:sub_category][:description],:category_id =>params[:category_id],:store_id =>params[:store_id]})
  
    if @sub.save
      flash.now[:success] = "Sub Category created successfully "
      redirect_to sub_categories_path
    else
      render 'sub_categories/new'
    end
  
  end

  def new
    @sub= SubCategory.new()
  end 

  def show
     @sub_category= SubCategory.find(params[:id])
  end
  
  def destroy
    @sub_category = SubCategory.find(params[:id])
    @sub_category.destroy
    redirect_to @sub_category	
  end
end
