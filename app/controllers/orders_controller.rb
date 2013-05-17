class OrdersController < ApplicationController

 def index
  @orders=Order.all
 end

 def show
  @orders=OrderItem.find_by_id(params[:order_items])
 end
 
 def destroy
    @orders = Order.find(params[:id])
    @orders.destroy
    redirect_to @order	
 end
 
end
