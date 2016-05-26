class RemoveCabletypeFromCables < ActiveRecord::Migration
  def change
    remove_column :cables, :cable_type
  end
end
