class Category < ActiveRecord::Base
  attr_accessible  :description, :title

  belongs_to :consumer
   
  has_many :products ,dependent: :destroy
  has_many :profiles ,dependent: :destroy
  has_many :sub_categories  ,dependent: :destroy
  
  validates :consumer_id, presence: true
  validates :title, presence: true ,
		    uniqueness: { case_sensitive: false }
  validates :description, presence: true, length: { maximum: 140 }
  default_scope order: 'categories.created_at DESC'

end
