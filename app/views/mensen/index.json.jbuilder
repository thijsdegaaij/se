json.array!(@mensen) do |mens|
  json.extract! mens, :id, :naam, :leeftijd, :geslacht, :kennisniveau, :gezondheidsniveau, :geluksniveau
  json.url mens_url(mens, format: :json)
end
