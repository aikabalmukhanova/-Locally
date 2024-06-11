class MeetingsController < ApplicationController
  def create
    @meeting = Meeting.new(meeting_params)
    @localler = Localler.find(params[:localler_id])
    @meeting.localler = @localler
    @chat = Chat.find(params[:meeting][:chat_id].to_i)
    @meeting.user = @chat.user
    if @meeting.save
      redirect_to chat_path(@chat)
    else
      render 'chats/show', notice: 'Something went wrong with your booking. Please try again.', status: :unprocessable_entity
    end
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    redirect_to dashboard_path
  end

  private

  def meeting_params
    params.require(:meeting).permit(:time, :location)
  end
end
