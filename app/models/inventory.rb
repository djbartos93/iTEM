class Inventory < ActiveRecord::Base
  searchkick
  require 'csv'

  def self.import(file)
    import = Import.new(path: "#{file.path}")
    import.run!

  end
end
