class CreateLocallers < ActiveRecord::Migration[7.1]
  def change
    create_table :locallers do |t|
      t.string :description
      t.boolean :availability
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
