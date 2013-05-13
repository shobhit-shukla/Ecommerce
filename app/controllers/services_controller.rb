class ServicesController < ApplicationController

  def sign_in
    #array_my = []
    #array_my << {:Name => "Test",:ID =>"test"}
    #render :json => array_my
    consumer = Consumer.find_by_email(params[:email].downcase)
      if consumer && consumer.authenticate(params[:password])
       render :json => consumer      
      else
       flash = 'Invalid Pass'	 
       render :json => flash
      end
   end
  
   def forget
     consumer= Consumer.where({:email => params[:email]})
      render :json => consumer        
   end
   
   def add_ads
     ad_post=AdPost.new({:name =>params[:name], :price =>params[:price], :description=>params[:description]}) 
      if ad_post.save
        flash = "Successful"
        render :json => flash
      else
      render :json => error
      end
   end

   def add_pros
    product=Product.new(params[:product]) 

      if product.save
        flash = "Successful"
        render :json => flash
      else
        render :json => error	
      end
   end
  
   def show_pros
	array_of_pr = []     
	product=Product.all
	product.each do |pr|
	array_of_pr << {:url => pr.pic.url(:small),:category_id => 		       pr.category_id,:title => pr.title, :content =>pr.content,:price => pr.price}
        end
     render :json =>array_of_pr
   end
   
   def show_ads
     ad_post = AdPost.all
     render :json =>ad_post
   end

   def sign_up
    consumer = Consumer.new(params[:consumer])
      if consumer.save
         render json: consumer
      else
	flash = "Fail"
	render :json => flash
       # render json: consumer.errors
      end
   end
  
  def categories_show
    category=Category.all
    render :json =>category	
  end

  def show_prod
    category=Category.find(params[:id])
    product = category.products.all

    render :json =>product
  end
  
  def sub_categories
     sub=SubCategory.where({:category_id => params[:category_id] })
    #category= Category.where({:category_id => '1'})
    #category=Category.find(params[:id])
    #sub_category = category.sub_categories.all	
    render :json =>sub
  end
end
