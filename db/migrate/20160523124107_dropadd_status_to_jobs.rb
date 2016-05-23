class DropaddStatusToJobs < ActiveRecord::Migration
  def change
    drop_table :add_status_to_jobs
  end
end
