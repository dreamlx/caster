class AddSupplyToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :supply, :boolean
  end
end
