class SubCategoriesController < ApplicationController
 
 def index
  @sub=SubCategory.where({:category_id => session[:category_id]})
   
   render @sub.inspect
  end
 
 def new
    @sub_category= SubCategory.new
 end 

 def create
   @sub_category = SubCategory.new({:title =>params[:title] ,:description =>params[:description],:category_id =>params[:category_id]})
   # render @sub_category.inspect
    if @sub_category.save
      flash.now[:success] = "Sub Category created successfully "
      redirect_to sub_categories_path
    else
      render 'sub_categories/new'
    end
  
 end

 def show
     @sub_category= SubCategory.find(params[:id])
 end
  
 def destroy
 end
end
