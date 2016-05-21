class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :job_id
      t.string :location
      t.text :description
      t.date :due_by
      t.date :created
      t.string :priority

      t.timestamps null: false
    end
  end
end
