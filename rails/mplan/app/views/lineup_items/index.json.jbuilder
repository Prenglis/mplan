json.array!(@lineup_items) do |lineup_item|
  json.extract! lineup_item, :id, :acolyte_id, :position_id
  json.url lineup_item_url(lineup_item, format: :json)
end
