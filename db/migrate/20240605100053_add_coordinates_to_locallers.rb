class AddCoordinatesToLocallers < ActiveRecord::Migration[7.1]
  def change
    add_column :locallers, :latitude, :float
    add_column :locallers, :longitude, :float
  end
end
