class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :img_url
      t.string :name
      t.string :blurb

      t.timestamps
    end
  end
end
