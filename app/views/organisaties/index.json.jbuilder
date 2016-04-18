json.array!(@organisaties) do |organisatie|
  json.extract! organisatie, :id, :naam, :bedrijfstak_id, :rechtsvorm_id
  json.url organisatie_url(organisatie, format: :json)
end
