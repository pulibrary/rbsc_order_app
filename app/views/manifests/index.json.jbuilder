json.array!(@manifests) do |manifest|
  json.extract! manifest, :id, :call_num, :label, :memo, :url, :uri, :item_qty, :division, :format, :permissions, :start_item, :end_item
  json.url manifest_url(manifest, format: :json)
end
