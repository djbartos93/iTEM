class AddProductBarcodeToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :product_barcode, :string
  end
end
