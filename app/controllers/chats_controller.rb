class ChatsController < ApplicationController
  before_action :set_booking, only: %i[show]

  def index
    set_user
    @chat = Chat.all
  end

  def show
    @chat = Chat.find(params[:id])
    @message = Message.new
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
