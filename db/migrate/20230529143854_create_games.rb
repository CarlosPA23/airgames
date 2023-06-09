class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :category
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
