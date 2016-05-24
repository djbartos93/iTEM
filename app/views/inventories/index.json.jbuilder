json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :tc_part, :short_desc, :description, :manufacture, :tc_type, :product_part, :tc_cat, :tc_wh, :tc_isle, :tc_shelf, :quantity_hand, :min_quantity, :quantity_used, :last_order, :product_barcode, :tc_barcode, :import_status
  json.url inventory_url(inventory, format: :json)
end
