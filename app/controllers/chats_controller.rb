class ChatsController < ApplicationController
  def index
    @chats = current_user.chats.includes(:user)
    @chats = current_user.chats.includes(:user) + current_user.localler.chats.includes(:localler) if current_user.localler
  end

  def show
    @chat = Chat.find(params[:id])
    @localler = @chat.localler
    @user = @chat.user
    @meeting = Meeting.new
    @localler_meetings = @chat.meetings.where localler: @localler
    @user_meetings = @chat.meetings.where user: @user

    if @chat.user != current_user && @chat.localler.user != current_user
      redirect_to locallers_path, notice: "You don't have access to this chat"
    end
    @message = Message.new
  end

  def create
    @chat = Chat.create(user: current_user, localler_id: params[:localler])
    redirect_to chat_path(@chat)
  end
end
