class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :name
      t.integer :seller_id
      t.string :brand
      t.float :price
      t.float :weight
      t.string :color
      t.float :discount
      t.string :category
      t.string :box

      t.timestamps null: false
    end
  end
end
