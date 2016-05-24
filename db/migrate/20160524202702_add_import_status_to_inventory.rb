class AddImportStatusToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :import_status, :booliean
  end
end
