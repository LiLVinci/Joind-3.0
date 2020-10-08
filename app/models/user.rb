class User < ApplicationRecord
  has_one_attached :image
  has_many :events
  has_many :requests
  has_many :participations
  has_many :messages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
