json.array!(@journaals) do |journaal|
  json.extract! journaal, :id, :journaal_type_id, :boeknummer, :datum, :leverancier, :klant, :hoeveelheid, :eenheid, :productnaam, :stukprijs, :betalingswijze, :valuta, :btw_percentage, :bedrag_ex_btw, :bedrag_inc_btw
  json.url journaal_url(journaal, format: :json)
end
