class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :img
      t.text :description

      t.timestamps
    end
  end
end
