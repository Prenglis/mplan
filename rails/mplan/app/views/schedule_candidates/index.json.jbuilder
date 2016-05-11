json.array!(@schedule_candidates) do |schedule_candidate|
  json.extract! schedule_candidate, :id, :mass_id
  json.url schedule_candidate_url(schedule_candidate, format: :json)
end
