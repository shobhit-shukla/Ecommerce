class ProfilesController < ApplicationController
 
  def index
     if sadmin_consumer?
        @pro=Profile.all
     else
        @pro = Profile.where({:consumer_id => current_user.id})
        session[:category_id] = @pro[0].category_id 
        session[:store_id] = @pro[0].id 
        #render session[:store_id].inspect
     end    
  end
  
  def create
   @profile = Profile.new({:name =>params[:profile][:name], :location =>params[:profile][:location], :zip_code=>params[:profile][:zip_code], :email=>params[:profile][:email], :phone_no=>params[:profile][:phone_no], :opening_hours=>params[:profile][:opening_hours], :closing_hours=>params[:profile][:closing_hours],:consumer_id=>params[:profile][:consumer_id],:category_id=>params[:profile][:category_id]})

    if @profile.save
        flash[:notice] = "Successfully created profile."
        redirect_to @profile
    else
      render :action => 'new'
    end
   end

   def new
    @profile = Profile.new(params[:profile])  
   end
  
   def show
    @profile = Profile.find(params[:id])  
   end
   
   def edit
     @profile = Profile.find(params[:id])
   end

   def update
    @profile = Profile.find(params[:id])
     if @profile.update_attributes(params[:profile])
       flash[:notice] = "Successfully updated store."
       redirect_to @profile
     else
      render :action => 'edit'
     end

   end
  
   def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to @profile	
   end
end
