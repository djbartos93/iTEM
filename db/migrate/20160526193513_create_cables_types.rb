class CreateCablesTypes < ActiveRecord::Migration
  def change
    create_table :cables_types, :id => false do |t|
      t.references :cable, index: true
      t.references :type, index: true

      t.timestamps
    end
  end
end
