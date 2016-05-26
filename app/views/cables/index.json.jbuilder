json.array!(@cables) do |cable|
  json.extract! cable, :id, :box_number, :length, :type_ids
  json.url cable_url(cable, format: :json)
end
