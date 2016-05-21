class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :tc_part
      t.string :short_desc
      t.text :description
      t.string :manufacture
      t.string :tc_type
      t.string :product_part
      t.string :tc_cat
      t.string :tc_wh
      t.string :tc_isle
      t.string :tc_shelf
      t.integer :quantity_hand
      t.integer :min_quantity
      t.integer :quantity_used
      t.string :last_order_quantity
      t.date :last_order

      t.timestamps null: false
    end
  end
end
