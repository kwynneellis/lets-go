class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  has_many :ratings, dependent: :destroy
  has_one :chat

  after_create :create_chat

  def self.create_chat
    @chat = Chat.create!(booking_id: booking)
  end
end
