class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.boolean :breakfast
      t.boolean :wifi
      t.integer :rating
      t.string :photo
      t.integer :price
      t.string :adres
      t.string :numder

      t.timestamps
    end
  end
end
