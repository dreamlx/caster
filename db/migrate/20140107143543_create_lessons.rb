class CreateCourses < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :description
      t.integer :teacher_id
      t.integer :room_id
      t.time :lessontime

      t.timestamps
    end
  end
end
