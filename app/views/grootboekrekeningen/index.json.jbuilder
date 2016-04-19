json.array!(@grootboekrekeningen) do |grootboekrekening|
  json.extract! grootboekrekening, :id, :naam, :gbr_categorie_id, :organisatie_id, :icoon
  json.url grootboekrekening_url(grootboekrekening, format: :json)
end
