json.array!(@interval_constraints) do |interval_constraint|
  json.extract! interval_constraint, :id, :from, :to, :constraint_id, :constraint_type
  json.url interval_constraint_url(interval_constraint, format: :json)
end
