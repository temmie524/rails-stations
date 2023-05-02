class CreateScreens < ActiveRecord::Migration[6.1]
  def change
    create_table :screens do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true
      t.references :sheet, null: false, foreign_key: true
      t.integer :screen

      t.timestamps
    end
  end
end
