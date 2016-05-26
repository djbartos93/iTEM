class AddImportStatusToInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :import_status, :boolean
  end
end
