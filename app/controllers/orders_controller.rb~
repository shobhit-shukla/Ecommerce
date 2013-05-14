class OrdersController < ApplicationController

 def index
  @orders=Order.all
 end

 def destroy
    @orders = Order.find(params[:id])
    @orders.destroy
    redirect_to @order	
 end
 
end
