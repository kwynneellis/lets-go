class ChatsController < ApplicationController
  before_action :set_booking, only: %i[show create]

  def index
    @my_workouts = current_user.workouts.with_booking
    @my_bookings = current_user.bookings

    @my_workouts_chats = @my_workouts.chats
    @my_bookings_chats = @my_bookings.map(&:chat)

    @all_chats = @my_workouts_chats.concat(@my_bookings_chats)
  end

  def show
    @chat = Chat.find(params[:id])
    @message = Message.new
  end

  def create
    @chat = Chat.create(booking_id: @booking)
    redirect_to booking_chat_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
