class AddBarcodeToCables < ActiveRecord::Migration
  def change
        add_column :cables, :cable_barcode, :string
  end
end
