json.array!(@schedule_headers) do |schedule_header|
  json.extract! schedule_header, :id, :from, :to
  json.url schedule_header_url(schedule_header, format: :json)
end
