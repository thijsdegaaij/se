json.array!(@producten) do |product|
  json.extract! product, :id, :naam, :icoon
  json.url product_url(product, format: :json)
end
