class AdPost < ActiveRecord::Base
  attr_accessible :description, :name, :link ,:photo
 
  validates :description, presence: true
  validates :name, presence: true, length: { maximum: 20 }
  validates :link, presence: true
  validates_attachment_presence :photo

  has_attached_file :photo,
  :url  => "/assets/ads/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/ads/:id/:style/:basename.:extension",
  :styles => {
    :thumb=> "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }

end
