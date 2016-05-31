class Cable < ActiveRecord::Base
  has_and_belongs_to_many :types

  def self.generate_cable_barcode
    begin
      self.cable_barcode = SecureRandom.base64(12)
    end while self.class.exists?(cable_barcode: cable_barcode)
  end
end
