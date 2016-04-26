json.array!(@journaaltypes) do |journaaltype|
  json.extract! journaaltype, :id, :naam, :icoon
  json.url journaaltype_url(journaaltype, format: :json)
end
