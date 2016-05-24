class AddTcBarcodeToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :tc_barcode, :string
  end
end
