class User < ApplicationRecord
  has_many :microposts

  before_save { self.email = email.downcase }

  VALID_INPUT = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }, format: { with: VALID_INPUT }
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_INPUT }, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }
end
