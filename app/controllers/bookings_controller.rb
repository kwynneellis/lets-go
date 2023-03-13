class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create index show]
  before_action :set_workout, only: %i[new create]
  before_action :set_rating, only: %i[show]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @existing_rating = Rating.where(booking_id: @booking.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.user = @user
    @booking.workout_id = @workout.id
    @booking.booking_date = @workout.date
    if @booking.save!
      # @chat = Chat.create(booking_id: @booking.id)
      redirect_to booking_path(@booking)
    else
      render "workouts/show", status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_workout
    @workout = Workout.find(params[:workout_id])
  end

  def set_chat
    @chat = Chat.find(params[:chat_id])
  end

  def set_rating
    @rating = Rating.new
  end

  def booking_params
    params.require(:booking).permit(:user_id, :workout_id, :booking_date)
  end
end
