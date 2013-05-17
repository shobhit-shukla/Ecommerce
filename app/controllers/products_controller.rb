class ProductsController < ApplicationController
  def index
    @products=Product.where({:store_id => session[:store_id]})
  end

  def new
    @product=Product.new
  end

  def create
     @product = Product.new(params[:product])
    if @product.save
        flash[:notice] = "Successfully created product."
        Cloudinary::Uploader.upload("http://localhost:3000/assets/               products/:id/:style/:basename.:extension")
        redirect_to @product
    else
      render :action => 'new'
    end
  end
  
  def show
     @product = Product.find(params[:id])
  end

   def update
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
  
  def edit
    @product= Product.find(params[:id])
  end
end
