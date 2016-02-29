json.array!(@divisions) do |division|
  json.extract! division, :id, :label
  json.url division_url(division, format: :json)
end
