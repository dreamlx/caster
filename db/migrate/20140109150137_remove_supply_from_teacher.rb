class RemoveSupplyFromTeacher < ActiveRecord::Migration
  def up
    remove_column :teachers, :supply
  end

  def down
    add_column :teachers, :supply, :string
  end
end
