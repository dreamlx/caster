class ChangeColumnToLesson < ActiveRecord::Migration
  def up
    remove_column :lessons, :lessontime
    add_column    :lessons, :starting_time, :datetime
    add_column    :lessons, :ending_time,   :datetime
  end

  def down
    add_column    :lessons, :lessontime, :time
    remove_column :lessons, :starting_time
    remove_column :lessons, :ending_time
  end
end
