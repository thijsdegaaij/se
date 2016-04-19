json.array!(@boektypes) do |boektype|
  json.extract! boektype, :id, :naam
  json.url boektype_url(boektype, format: :json)
end
