class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :job
      t.string :part_number
      t.text :part_description
      t.integer :quantity_used
      t.boolean :closet

      t.timestamps null: false
    end
  end
end
