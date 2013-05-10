class SessionsController < ApplicationController
 
 def new
	if signed_in?
            if sadmin_consumer?
	       redirect_to :consumers
             else
                profile = Profile.find_by_consumer_id(current_user.id)
                 if profile
                   redirect_to profiles_path
                  else
                  redirect_to new_profile_path 
                  end                
             end
	else
	   true
	end
 end
 
 def create
  consumer = Consumer.find_by_email(params[:session][:email].downcase)
   if consumer && consumer.authenticate(params[:session][:password])
      session[:consumer_id] = consumer.id
      sign_in consumer
      redirect_to root_url
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
