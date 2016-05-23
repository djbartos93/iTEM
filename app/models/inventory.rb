class Inventory < ActiveRecord::Base
  searchkick

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Inventory.create! row.to_hash
    end
  end
end
