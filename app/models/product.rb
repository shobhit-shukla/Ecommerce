class Product < ActiveRecord::Base
  attr_accessible :sub_category_id, :content, :title ,:pic ,:price,:mrp, :units, :quantity

  belongs_to:sub_category
  belongs_to:category

  validates :title, presence: true
  validates :price, presence: true
  validates :sub_category_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates_attachment_presence :pic

  has_attached_file :pic,
   :url  => "/assets/products/:id/:style/:basename.:extension",
   :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension",
   :styles  => { :small => "100x100#", :large => "500x500>" }  


  default_scope order: 'products.created_at DESC'
  
end
