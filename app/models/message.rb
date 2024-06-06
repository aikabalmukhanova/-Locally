class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user

  def create
    # need content in strong params, chat_id and user_id
    @message = Message.new(message_params)
    @message.user = current_user
    @message.chat = Chat.find(params[:chat_id])
  end

  def sender?(a_user)
    user.id == a_user.id
  end
  
  private

  def message_params
    params.require(:message).permit(:content)
  end

end
