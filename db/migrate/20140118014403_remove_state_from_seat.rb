class RemoveStateFromSeat < ActiveRecord::Migration
  def up
    remove_column :seats, :state
  end

  def down
    add_column :seats, :state, :string
  end
end
