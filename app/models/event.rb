class Event < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  belongs_to :category
  has_many :requests, dependent: :destroy
  has_many :participations
  # has_many :users

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :category, presence: true
end
