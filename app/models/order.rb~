class Order < ActiveRecord::Base
  attr_accessible :consumer_id, :shipping_address, :store_id, :total_price, :zip_code, :phone_no
  
  belongs_to :consumer
  belongs_to :profile 
 
  has_many :orders,dependent: :destroy

end
