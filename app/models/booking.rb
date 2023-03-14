class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  has_many :ratings, dependent: :destroy
  has_one :chat, dependent: :destroy

  after_create :create_chat

  scope :with_ratings, -> { joins(:ratings) }

  def self.create_chat
    @chat = Chat.create!(booking_id: booking)
  end

  def self.ratings_by_others(logged_in_user)
    Rating.where(id: all.with_ratings.where.not('ratings.user_id' => logged_in_user.id).pluck('ratings.id'))
  end
end
