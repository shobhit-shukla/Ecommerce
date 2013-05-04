class ProductsController < ApplicationController
  def index
    @products=Product.all
  end

  def new
    @product=Product.new
  end

  def create
     @product = Product.new(params[:product])
    if @product.save
        flash[:notice] = "Successfully created product."
        redirect_to @product
    else
      render :action => 'new'
    end
  end
  
  def show
     @product = Product.find(params[:id])
  end

   def edit
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:notice] = "Successfully updated product."
      redirect_to @product
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end


end
