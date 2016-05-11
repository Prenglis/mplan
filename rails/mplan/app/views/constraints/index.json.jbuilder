json.array!(@constraints) do |constraint|
  json.extract! constraint, :id, :ctype
  json.url constraint_url(constraint, format: :json)
end
