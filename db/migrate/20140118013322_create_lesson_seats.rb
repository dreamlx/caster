class CreateLessonSeats < ActiveRecord::Migration
  def change
    create_table :lesson_seats do |t|
      t.integer :lesson_id
      t.integer :seat_id
      t.string :state

      t.timestamps
    end
  end
end
