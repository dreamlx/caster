class ChangeLessonAndRoom < ActiveRecord::Migration
  def up
    remove_column :lessons, :seatcount
    remove_column :lessons, :number_of_line
    add_column :rooms, :seatcount, :integer
    add_column :rooms, :number_of_line, :integer
  end

  def down
  end
end
