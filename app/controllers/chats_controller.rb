class ChatsController < ApplicationController
  before_action :set_booking, only: %i[show]

  def show
    @chat = Chat.find(params[:id])
    @message = Message.new
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
