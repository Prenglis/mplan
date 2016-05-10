json.array!(@masses) do |mass|
  json.extract! mass, :id, :start, :end, :church_id
  json.url mass_url(mass, format: :json)
end
