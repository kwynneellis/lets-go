class AddCoordinatesToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :latitude, :float
    add_column :workouts, :longitude, :float
  end
end
