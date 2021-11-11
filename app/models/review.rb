class Review < ApplicationRecord
  belongs_to :item
  validates :comment, :rating, presence: true
  validates :comment, length: { minimum: 15 }
  validates :rating,  inclusion: { in: (0..5) }, numericality: true
end
