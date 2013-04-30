class Category < ActiveRecord::Base
  attr_accessible  :description, :title

  validates :consumer_id, presence: true
  belongs_to :consumer
  
  validates :title, presence: true
  validates :description, presence: true, length: { maximum: 140 }
  default_scope order: 'categories.created_at DESC'

end
