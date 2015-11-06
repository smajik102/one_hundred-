class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :movement
      t.integer :reps
      t.integer :points
      t.text :notes
      t.references :workout, index: true, foreign_key: true

      t.timestamps
    end
  end
end
