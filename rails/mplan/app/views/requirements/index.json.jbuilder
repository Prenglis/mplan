json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :position_id, :amount
  json.url requirement_url(requirement, format: :json)
end
