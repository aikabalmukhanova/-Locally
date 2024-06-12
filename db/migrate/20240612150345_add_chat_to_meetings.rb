class AddChatToMeetings < ActiveRecord::Migration[7.1]
  def change
    add_reference :meetings, :chat, foreign_key: true
  end
end
