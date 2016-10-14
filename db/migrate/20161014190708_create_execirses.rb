class CreateExecirses < ActiveRecord::Migration[5.0]
  def change
    create_table :execirses do |t|
      t.references :workout, foreign_key: true
      t.string :name
      t.string :sets
      t.string :rep

      t.timestamps
    end
  end
end
