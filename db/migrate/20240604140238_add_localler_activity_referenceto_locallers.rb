class AddLocallerActivityReferencetoLocallers < ActiveRecord::Migration[7.1]
  def change
    add_reference :locallers, :localler_activities, foreign_key: true
  end
end
