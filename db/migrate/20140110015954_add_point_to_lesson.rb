class AddPointToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :point, :integer
  end
end
