class ChatsController < ApplicationController
  def show
    @chat = Chat.find(params[:id])
    @message = Message.new
  end

  def create
    @chat = Chat.create
    redirect_to chat_path(@chat)
  end
end
