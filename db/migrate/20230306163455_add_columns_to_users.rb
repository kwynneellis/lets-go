class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :about_me, :text
    add_column :users, :fitness_goal, :text
    add_column :users, :fitness_level, :integer
    add_column :users, :attendance, :float
    add_column :users, :avg_rating, :float
  end
end
