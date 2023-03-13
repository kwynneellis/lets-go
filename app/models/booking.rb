class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  has_many :ratings, dependent: :destroy
  has_many :chats
end
