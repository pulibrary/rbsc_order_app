json.array!(@permissions) do |permission|
  json.extract! permission, :id, :label, :description, :price, :fund_code
  json.url permission_url(permission, format: :json)
end
