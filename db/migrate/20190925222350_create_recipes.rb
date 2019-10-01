class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :madeBy
      t.string :img
      t.string :prepTime
      t.string :servingSize
      t.string :nutrition
      t.string :directions, array: true, default: []

      t.timestamps
    end
  end
end
