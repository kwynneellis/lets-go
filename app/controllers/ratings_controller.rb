class RatingsController < ApplicationController
  before_action :set_booking, only: %i[new create]
  before_action :set_user, only: %i[create]

  def new
    @booking = Booking.find(params[:booking_id])
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.booking_id = @booking.id
    @rating.user_id = @user.id
    @rating.workout_host = current_user.id == @booking.workout.user_id
    if @rating.save!
      redirect_to workout_path(@booking.workout)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @rating = Rating.find(params[:id])
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def rating_params
    params.require(:rating).permit(:booking_id, :buddy_attended, :buddy_rating, :comment, :user_id)
  end
end
