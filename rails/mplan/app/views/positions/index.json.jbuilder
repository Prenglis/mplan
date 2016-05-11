json.array!(@positions) do |position|
  json.extract! position, :id, :description
  json.url position_url(position, format: :json)
end
