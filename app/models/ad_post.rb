class AdPost < ActiveRecord::Base
  attr_accessible :description, :name, :link ,:photo
 
  validates :description, presence: true
  validates :name, presence: true, length: { maximum: 20 }
  validates :link, presence: true

  has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }

end
