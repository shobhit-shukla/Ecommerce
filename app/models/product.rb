class Product < ActiveRecord::Base
  attr_accessible :category_id, :content, :title 

  
  belongs_to:category

  validates :title, presence: true
  validates :category_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }


  default_scope order: 'products.created_at DESC'

  
end
