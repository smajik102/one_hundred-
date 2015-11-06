class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.text :workout
      t.text :notes
      t.references :user, index: true, foreign_key: true

      t.timestamps 
    end
  end
end
