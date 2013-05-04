class ServicesController < ApplicationController
 # protect_from_forgery :except => [:sign_in],[:ad_post]
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
  
   def add_ads
     ad_post=AdPost.new({:name =>params[:name], :price =>params[:price], :description=>params[:description]}) 
      if ad_post.save
        flash = "Successful"
        render :json => flash
      else
      render :json => error
      end
   end

end
