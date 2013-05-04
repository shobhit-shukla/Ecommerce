class AdPostsController < ApplicationController

  def index
    @ad_posts=AdPost.all
  end
 
  def new
    @ad_post=AdPost.new
  end
  
  def create
    @ad_post=AdPost.new(params[:ad_post]) 
      if @ad_post.save
        flash[:notice] = "Successfully created Ad."
        redirect_to @ad_post
      else
      render :action => 'new'
      end
  end 
  
  def show
 	@ad_post = AdPost.find(params[:id])
  end
  
  def destroy
    @ad_post = AdPost.find(params[:id])
    @ad_post.destroy
    redirect_to ad_posts_path
  end
end
