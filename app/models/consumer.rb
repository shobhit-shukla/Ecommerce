class Consumer < ActiveRecord::Base
  attr_accessible :email, :name, :password
  
  :email, has presence: true
end
