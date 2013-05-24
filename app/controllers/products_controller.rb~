class ProductsController < ApplicationController
  def index
    @products = Product.paginate(:per_page => 2, :page => params[:page]).order('created_at DESC').where({:store_id => session[:store_id]})
  end

  def new
    @product=Product.new
  end

  def create

    data = Cloudinary::Uploader.upload(params[:product][:pic_file_name])
    #a = data["url"]
    #render a.inspect  

    @product = Product.new({:store_id => params[:product][:store_id],:sub_category_id => params[:product][:sub_category_id], :content =>params[:product][:content] , :title => params[:product][:title] ,:price => params[:product][:price],:mrp => params[:product][:mrp], :units => params[:product][:units], :quantity => params[:product][:quantity], :pic_content_type => data["url"]})


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

   def update
    data = Cloudinary::Uploader.upload(params[:product][:pic_file_name])
    @product = Product.find(params[:id])
    if @product.update_attributes({:store_id => params[:product][:store_id],:sub_category_id => params[:product][:sub_category_id], :content =>params[:product][:content] , :title => params[:product][:title] ,:price => params[:product][:price],:mrp => params[:product][:mrp], :units => params[:product][:units], :quantity => params[:product][:quantity], :pic_content_type => data["url"]})

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
