class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :workouts, dependent: :destroy
  has_many :bookings_as_owner, through: :workouts, source: :bookings
  has_many :user_tags
  has_many :tags, through: :user_tags
  has_many :ratings, through: :bookings
  has_one_attached :photo

  validates :email, :password, :first_name, :last_name,
            :username, :date_of_birth, :about_me, :fitness_goal, :fitness_level, presence: true
  validates :email, :username, uniqueness: true
  validates :fitness_level, numericality: { only_integer: true, in: 1..5 }
  validates :attendance, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100.0 }
  validates :avg_rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5.0 }
  validates :about_me, :fitness_goal, length: { minimum: 5 }
end
