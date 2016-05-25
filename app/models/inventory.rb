class Inventory < ActiveRecord::Base
  #allow searchkick to index the database
  searchkick
  require 'csv'

  #sets all items with "nill" to allow import
  def self.import_enable
    Inventory.where(import_status: '').each do |enable|
      enable.update_attribute :import_status, '0'
    end
  end

  #to generate a barcode for items that do not have easy to use product barcodes
  def generate_tc_barcode
    begin
      self.tag_number = SecureRandom.base64(12)
    end while self.class.exists?(tag_number: tag_number)
  end
end
