class Workout < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :activity_type, :intensity_level, :location,
            :date, :start_time, :duration, :description, presence: true
  validates :intensity_level, numericality: { only_integer: true, in: 1..5 }
  validates :duration, numericality: { only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 300 }
  validates :description, length: { minimum: 10 }

  WORKOUT_EMOJIS = {
    'Run' => 'Run 🏃',
    'Walk' => 'Walk 🚶',
    'Cycle' => 'Cycle 🚴',
    'Strength' => 'Strength 🏋️',
    'Park Workout' => 'Park Workout 🌳',
    'Pilates' => 'Pilates Class 🧘',
    'Swim' => 'Swim 🏊',
    'Tennis' => 'Tennis 🎾',
    'Workout Class' => 'Workout Class 🏋️',
    'Yoga' => 'Yoga Class 🧘'
  }
end
