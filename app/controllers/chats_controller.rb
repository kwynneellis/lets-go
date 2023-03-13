class ChatsController < ApplicationController
  before_action :set_booking, only: %i[show create]

  def index
    set_user
    @my_bookings_host = []
    @my_bookings_guest = []
    # find bookings through as_owner

    if Booking.where(user: current_user.bookings_as_owner).present?
      @my_bookings_as_host = Booking.where(user: current_user.bookings_as_owner)
      @my_bookings_host << @my_bookings_as_host
    end
    # find bookings through user
    if Booking.where(user: current_user)
      @my_bookings_as_booker = Booking.where(user: current_user)
      @my_bookings_guest << @my_bookings_as_booker
    end
    # raise
    @my_bookings_host.flatten!
    @my_bookings_guest.flatten!

    # find chats for said bookings (in chats index view page)
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
