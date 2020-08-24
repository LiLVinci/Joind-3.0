class User < ApplicationRecord
  has_many :events
  has_many :requests
  has_one_attached :image

  validates :email, uniqueness: true
  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
end
