class RemoveSizeFromRoom < ActiveRecord::Migration
  def up
    remove_column :rooms, :size
  end

  def down
    add_column :rooms, :size, :string
  end
end
