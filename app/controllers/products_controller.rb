class ProductsController < ApplicationController
  def index
    @products=Product.all
  end

  def new
    @product=Product.new
  end

  def create
    @category=Category.new
    @product = @category.products.build(params[:product])
    if @product.save
      flash.now[:success] = "Product created successfully "
      redirect_to products_path
    else
      render 'products/new'
    end
  end 
end
