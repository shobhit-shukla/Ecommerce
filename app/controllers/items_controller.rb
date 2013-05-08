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
  end
  
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end
end
