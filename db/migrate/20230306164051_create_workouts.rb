class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :activity_type
      t.integer :intensity_level
      t.string :location
      t.date :date
      t.time :start_time
      t.integer :duration
      t.text :description
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
