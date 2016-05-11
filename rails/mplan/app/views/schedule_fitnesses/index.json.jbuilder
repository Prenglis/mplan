json.array!(@schedule_fitnesses) do |schedule_fitness|
  json.extract! schedule_fitness, :id, :schedule_header_id, :schedule_candidate_id, :fitness
  json.url schedule_fitness_url(schedule_fitness, format: :json)
end
