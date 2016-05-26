json.array!(@cables) do |cable|
  json.extract! cable, :id, :cable_type, :box_number, :length
  json.url cable_url(cable, format: :json)
end
