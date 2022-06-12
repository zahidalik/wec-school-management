class Admin < ApplicationRecord
  validates_presence_of :username
  
  has_secure_password
end
