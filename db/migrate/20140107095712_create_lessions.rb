class CreateLessions < ActiveRecord::Migration
  def change
    create_table :lessions do |t|
      t.string :name
      t.text :description
      t.datetime :lessiontime

      t.timestamps
    end
  end
end
