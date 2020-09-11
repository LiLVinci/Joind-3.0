class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :requests, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :category, presence: true
end
