class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 5000 }, presence: true
end
