json.array!(@acolytes) do |acolyte|
  json.extract! acolyte, :id, :firstname, :lastname, :church_id, :since
  json.url acolyte_url(acolyte, format: :json)
end
