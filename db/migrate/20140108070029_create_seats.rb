class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :name
      t.integer :lesson_id
      t.string :state

      t.timestamps
    end
  end
end
