class CreateSheet < ActiveRecord::Migration[6.1]
  def change
    create_table :sheets do |t|
      t.integer "column", null: false
      t.string "row", null: false
    end
  end
end

