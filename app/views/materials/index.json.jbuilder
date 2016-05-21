json.array!(@materials) do |material|
  json.extract! material, :id, :job, :part_number, :part_description, :quantity_used, :closet
  json.url material_url(material, format: :json)
end
