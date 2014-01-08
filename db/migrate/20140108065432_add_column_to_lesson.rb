class AddColumnToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :seatcount, :integer
    add_column :lessons, :number_of_line, :integer
  end
end
