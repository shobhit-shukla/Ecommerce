class Consumer < ActiveRecord::Base
  attr_accessible :email, :name, :password , :password_confirmation,:sadmin,:phone_no,
:address
  has_secure_password
  has_many :categories
  has_many :profiles 

  before_save { |consumer| consumer.email = email.downcase }
  before_save :create_remember_token

  
  validates :name  ,presence:true ,length: { maximum:30}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email ,presence: true, format: { with: VALID_EMAIL_REGEX },
		    uniqueness: { case_sensitive: false }
  validates :password ,presence: true , length: { minimum: 6 }
  validates :password_confirmation, presence: true	

  
 private

  def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
  end
end
