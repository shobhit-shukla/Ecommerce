class ItemsController < ApplicationController
  def index
   @items=Item.all
  end
  
  def create
   @item = Item.new(params[:item])
    if @item.save
        flash[:notice] = "Successfully created item."
        redirect_to @item
    else
      render :action => 'new'
    end
  end
   
  def new
   @item = Item.new(params[:item])  
  end
  
  def show
  data = Cloudinary::Uploader.upload("http://localhost:3000/assets/products/9/small/guava-juice3.jpg?1368597010")
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end
end
