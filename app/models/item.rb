class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, :category, presence: true
  validates :price, presence: true, numericality: true
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
end
