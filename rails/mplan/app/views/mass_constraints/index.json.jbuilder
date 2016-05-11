json.array!(@mass_constraints) do |mass_constraint|
  json.extract! mass_constraint, :id, :mass_id, :constraint_id, :constraint_type
  json.url mass_constraint_url(mass_constraint, format: :json)
end
