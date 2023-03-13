class AddWorkoutHostToRatings < ActiveRecord::Migration[7.0]
  def change
    add_column :ratings, :workout_host, :boolean
  end
end
