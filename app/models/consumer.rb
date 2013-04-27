class Consumer < ActiveRecord::Base
  attr_accessible :email, :name, 
  :email has_presence: true

def index
end

end
