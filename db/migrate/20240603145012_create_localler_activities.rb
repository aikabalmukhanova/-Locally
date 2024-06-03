class CreateLocallerActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :localler_activities do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :localler, null: false, foreign_key: true

      t.timestamps
    end
  end
end
