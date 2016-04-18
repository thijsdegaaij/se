json.array!(@rechtsvormen) do |rechtsvorm|
  json.extract! rechtsvorm, :id, :naam
  json.url rechtsvorm_url(rechtsvorm, format: :json)
end
