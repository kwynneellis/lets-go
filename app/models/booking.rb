class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :workout, dependent: :destroy
  has_many :ratings
end
