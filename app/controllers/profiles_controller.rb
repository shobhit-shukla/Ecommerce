class ProfilesController < ApplicationController
 
 def index
    @profiles=Profile.all
  end
  
  def create
   @profile = Profile.new(params[:profile])
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
  end
  
  def destroy
  end

end
