class RenameLessonIdToSeat < ActiveRecord::Migration
  def up
    rename_column :seats, :lesson_id, :room_id
  end

  def down
    rename_column :seats, :room_id, :lesson_id
  end
end
