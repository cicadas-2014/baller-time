class CreateBallers < ActiveRecord::Migration
  def change
    create_table :ballers do |t|
      t.string :name, null: false
      t.integer :jersey, null: false
      t.string :sponsor, null: false
      t.timestamps
    end
  end
end
