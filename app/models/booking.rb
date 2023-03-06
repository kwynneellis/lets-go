class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  has_many :ratings
end
