json.array!(@grootboektypes) do |grootboektype|
  json.extract! grootboektype, :id, :naam, :icoon
  json.url grootboektype_url(grootboektype, format: :json)
end
