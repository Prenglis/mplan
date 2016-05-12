json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :schedule_header_id, :fitness
  json.url schedule_url(schedule, format: :json)
end
