class ChatsController < ApplicationController
  before_action :set_booking, only: %i[show create]

  def index
    @my_workouts = current_user.workouts.with_booking
    @my_bookings = current_user.bookings

    @my_workouts_chats = @my_workouts.chats
    @my_bookings_chats = Chat.where(id: @my_bookings.map(&:chat).map(&:id))

    @all_chats = @my_workouts_chats.or(@my_bookings_chats)
    @chats_with_messages = @all_chats.joins(:messages).distinct
    @chats_ordered_by_messages = @chats_with_messages.includes(:messages).order("messages.created_at DESC")
    @chats_without_messages = @all_chats.where.missing(:messages)

    @all_ordered_chats = @chats_without_messages + @chats_ordered_by_messages
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
