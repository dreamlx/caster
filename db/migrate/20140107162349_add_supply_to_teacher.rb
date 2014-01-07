class AddSupplyToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :supply, :boolean
  end
end
