class Rating < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :buddy_attended, :buddy_rating, presence: true
  validates :buddy_rating, numericality: { only_integer: true, in: 1..5 }
end
