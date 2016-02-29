json.array!(@items) do |item|
  json.extract! item, :id, :label, :url, :uri
  json.url item_url(item, format: :json)
end
