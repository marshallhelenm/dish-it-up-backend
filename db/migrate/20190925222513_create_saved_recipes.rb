class CreateSavedRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_recipes do |t|
      t.integer :recipe_id
      t.integer :user_id
      t.string :notes
      t.string :tags

      t.timestamps
    end
  end
end
