class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :venue_id
      t.text :description

      t.timestamps
    end
  end
end
