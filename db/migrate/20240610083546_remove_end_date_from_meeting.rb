class RemoveEndDateFromMeeting < ActiveRecord::Migration[7.1]
  def change
    remove_column :meetings, :end_date, :datetime
    rename_column :meetings, :start_date, :time
  end
end
