class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, :category, presence: true
  validates :price, presence: true, numericality: true
end
