json.array!(@formats) do |format|
  json.extract! format, :id, :media, :size, :filetype, :fund_code
  json.url format_url(format, format: :json)
end
