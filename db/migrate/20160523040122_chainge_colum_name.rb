class ChaingeColumName < ActiveRecord::Migration
  def change
    rename_column :materials, :job, :material_job
  end
end
