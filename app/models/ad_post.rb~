class AdPost < ActiveRecord::Base
  attr_accessible :description, :name, :price
 
  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true, length: { maximum: 10 }
end
