class MeetingsController < ApplicationController
  def create
    @meeting = Meeting.new(meeting_params)
    @localler = Localler.find(params[:localler_id])
    @meeting.localler = @localler
    @meeting.user = current_user
    @chat = Chat.find(params[:chat_id])
    if @meeting.save
      redirect_to chat_path(@chat)
    else
      render 'chat/show', notice: 'Something went wrong with your booking. Please try again.', status: :unprocessable_entity
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
