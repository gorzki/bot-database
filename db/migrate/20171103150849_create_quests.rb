class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.string :shortcut
      t.string :name
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
