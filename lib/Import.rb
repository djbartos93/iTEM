class Import
  include CSVImporter

  model Inventory

  column :tc_part, required: true
  column :short_desc, required: true
  column :description, required: false
  column :manufacture, required: false
  column :tc_type, required: false
  column :product_part, required: false
  column :tc_cat, required: false
  column :tc_wh, required: false
  column :tc_isle, required: false
  column :tc_shelf, required: false
  column :quantity_hand, required: false
  column :last_order_quantity, required: false
  column :last_order, required: false
  column :import_status, required: true

  identifier :tc_part, :import_status
  when_invalid :skip



end
