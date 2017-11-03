class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :short
      t.string :name
      t.integer :grade
      t.text :mats

      t.timestamps
    end
  end
end
