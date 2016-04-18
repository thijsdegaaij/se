json.array!(@bedrijfstakken) do |bedrijfstak|
  json.extract! bedrijfstak, :id, :naam
  json.url bedrijfstak_url(bedrijfstak, format: :json)
end
