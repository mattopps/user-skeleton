class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniqueness: true

  # has_many : , dependent: :destroy
  # has_many : , dependent: :destroy
  # has_many : , dependent: :destroy
  # has_many : , dependent: :destroy

  has_secure_password
end
