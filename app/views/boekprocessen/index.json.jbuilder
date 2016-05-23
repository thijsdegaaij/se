json.array!(@boekprocessen) do |boekproces|
  json.extract! boekproces, :id, :naam, :icoon
  json.url boekproces_url(boekproces, format: :json)
end
