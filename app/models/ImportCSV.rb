class ImportCSV
  include CSVImporter

  model Inventory

  column :tc_part, required: true
  column :short_desc
  column :description
  column :manufacture
  column :tc_type
  column :product_part
  column :tc_cat
  column :tc_wh
  column :tc_isle
  column :tc_shelf
  column :quantity_hand
  column :min_quantity
  column :quantity_used
  column :last_order

  identifier :tc_part


end
