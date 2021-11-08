class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :category, presence: true
  validates :price, presence: true, numericality: true
end
