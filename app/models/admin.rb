class Admin < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true

  has_secure_password

  def to_s
    username
  end
end
