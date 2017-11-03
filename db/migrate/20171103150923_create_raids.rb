class CreateRaids < ActiveRecord::Migration[5.1]
  def change
    create_table :raids do |t|
      t.string :shortcut
      t.string :name
      t.integer :level
      t.integer :window
      t.datetime :tod
      t.datetime :next
      t.string :link

      t.timestamps
    end
  end
end
