class Remove < ActiveRecord::Base
  attr_accessible :order, :order_by, :order_to, :shipping_address, :total_price, :zip_code
end
