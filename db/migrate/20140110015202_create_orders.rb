class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number
      t.integer :seat_id
      t.integer :user_id

      t.timestamps
    end
  end
end
