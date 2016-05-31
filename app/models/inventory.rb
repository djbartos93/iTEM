class Inventory < ActiveRecord::Base
  #allow searchkick to index the database
  searchkick
  require 'csv'

  #add column to CSV to control importing
  def self.add_status(file)


  end

  #sets all items with "nill" to allow import
  def self.import_enable
    Inventory.all.each do |enable|
      enable.update_attribute :import_status, 'false'
    end
  end

  def self.update_quantity(part, quantity_update)
    current = Inventory.find_by tc_part: "#{part}"
    quantity = current.quantity_hand
    new_quantity = (quantity - quantity_update)
    selected.update_attribute(:quantity_hand, new_quantity)
  end


  #to generate a barcode for items that do not have easy to use product barcodes
  def generate_tc_barcode
    begin
      self.tag_number = SecureRandom.base64(12)
    end while self.class.exists?(tag_number: tag_number)
  end
end
