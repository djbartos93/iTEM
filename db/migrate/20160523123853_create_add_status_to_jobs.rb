class CreateAddStatusToJobs < ActiveRecord::Migration
  def change
    create_table :add_status_to_jobs do |t|

      t.timestamps null: false
    end
  end
end
