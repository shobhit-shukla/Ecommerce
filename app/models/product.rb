class Product < ActiveRecord::Base
  attr_accessible :category_id, :content, :title
  belongs_to:category

  validates :category_id, presence: true

  default_scope order: 'products.created_at DESC'

end
