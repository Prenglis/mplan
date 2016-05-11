json.array!(@weekday_constraints) do |weekday_constraint|
  json.extract! weekday_constraint, :id, :day, :name, :constraint_id, :constraint_type
  json.url weekday_constraint_url(weekday_constraint, format: :json)
end
