class AddNotesToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :notes, :string
  end
end
