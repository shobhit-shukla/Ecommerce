class Product < ActiveRecord::Base
  attr_accessible :store_id,:sub_category_id, :content, :title ,:pic_file_name, :pic_content_type	 ,:price,:mrp, :units, :quantity

  belongs_to:sub_category
  belongs_to:category
  belongs_to:profile

  validates :title, presence: true
  validates :price, presence: true
  validates :sub_category_id, presence: true
  validates :store_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  
  default_scope order: 'products.created_at DESC'
  
end
