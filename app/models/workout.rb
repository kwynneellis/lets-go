class Workout < ApplicationRecord
  belongs_to :user
  has_many :bookings
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
    'Pilates Class' => 'Pilates Class 🧘',
    'Swim' => 'Swim 🏊',
    'Tennis' => 'Tennis 🎾',
    'Workout Class' => 'Workout Class 🏋️',
    'Yoga Class' => 'Yoga Class 🧘'
  }

  def is_host?(logged_in_user)
    user == logged_in_user
  end

  def has_a_booking?
    bookings.any?
  end

  def has_a_rating?
    has_a_booking? ? bookings.first.ratings.any? : false
    # booking.any? { |booking| booking.ratings.any? }
  end

  def name_of_buddy(logged_in_user)
    is_host?(logged_in_user) ? (has_a_booking? ? bookings.first.user.first_name.capitalize : "buddy") : user.first_name.capitalize
  end

  def buddy(logged_in_user)
    is_host?(logged_in_user) ? (has_a_booking? ? bookings.first.user : "buddy") : user
  end

  def has_host_rating?
    bookings.first.ratings.any?(&:workout_host)
  end

  def has_guest_rating?
    bookings.first.ratings.any? { |r| r.workout_host == false }
  end

  def ask_for_rating?(logged_in_user)
    # workout should be in the past
    # workout should have a booking
    # logged in person (host OR booker) should not have given a rating already
    (date.past? && bookings.any? && ((is_host?(logged_in_user) && !has_host_rating?) || (!is_host?(logged_in_user) && !has_guest_rating?)))
  end
end
