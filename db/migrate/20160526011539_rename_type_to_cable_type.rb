class RenameTypeToCableType < ActiveRecord::Migration
  def change
    rename_column :cables, :type, :cable_type
  end
end
