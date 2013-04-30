class SessionsController < ApplicationController
 
 def new
 end
 
 def create
  consumer = Consumer.find_by_email(params[:session][:email].downcase)
   if consumer && consumer.authenticate(params[:session][:password])
      sign_in consumer
      redirect_to consumer
   else
     flash.now[:error] = 'Invalid email/password combination'
     render 'new'
   end
 end 
 
 def destroy
    sign_out
    redirect_to root_url
 end

end