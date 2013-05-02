class ServicesController < ApplicationController
  protect_from_forgery :except => [:sign_in]
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
  
   def sign_up
    @consumer = Consumer.new(params[:consumer])
     respond_to do |format|
       if @consumer.save
         render json: @consumer
       else       
         render json: @consumer.errors
       end
     end
   end

end
