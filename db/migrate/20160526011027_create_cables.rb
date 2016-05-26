class CreateCables < ActiveRecord::Migration
  def change
    create_table :cables do |t|
      t.string :type
      t.integer :box_number
      t.integer :length

      t.timestamps null: false
    end
  end
end
