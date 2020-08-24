class Event < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :time, presence: true
end
