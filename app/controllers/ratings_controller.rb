class RatingsController < ApplicationController
  before_action :set_booking, only: %i[new create]

  def new
    # We need @restaurant in our `simple_form_for`
    @booking = Booking.find(params[:booking_id])
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.user = @user
    @rating.booking = @booking
    if @rating.save
      redirect_to booking_path(@booking)
    else
      render "bookings/show", status: :unprocessable_entity
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
    params.require(:review).permit(:buddy_attended, :buddy_rating, :comment, :booking_id)
  end
end
