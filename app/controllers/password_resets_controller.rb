class PasswordResetsController < ApplicationController
  def new
  end
 
 def create
  user = Consumer.find_by_email(params[:email])
  user.send_password_reset if user
  redirect_to root_url, :notice => "Email sent with password reset instructions."
 end

 def edit
  @consumer = Consumer.find_by_password_reset_token!(params[:id])
 end

 def update
  @consumer = Consumer.find_by_password_reset_token!(params[:id])
  if @consumer.password_reset_sent_at < 2.hours.ago
    redirect_to new_password_reset_path, :alert => "Password reset has expired."
  elsif @consumer.update_attributes(params[:consumer])
    redirect_to root_url, :notice => "Password has been reset!"
  else
    render :edit
  end
 end
end
