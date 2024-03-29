class MessagesController < ApplicationController
  def create
    @chat = Chat.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.chat = @chat
    @message.user = current_user

    @message.save
    ChatChannel.broadcast_to(
      @chat,
      message: render_to_string(partial: "message", locals: { message: @message }),
      sender_id: @message.user_id
    )
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
