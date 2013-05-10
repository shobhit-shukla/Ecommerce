class Profile < ActiveRecord::Base
  attr_accessible :consumer_id,:category_id, :closing_hours, :email, :location, :name,:zip_code, :opening_hours, :phone_no

belongs_to :category
belongs_to :consumer

validates  :category_id,presence: true
validates  :consumer_id,presence: true

end
