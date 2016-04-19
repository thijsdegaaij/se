json.array!(@boekingen) do |boeking|
  json.extract! boeking, :id, :boek_type_id, :grootboekrekening_id, :overeenkomst_id, :product_id, :datum, :icoon, :bij_af, :waarde, :p_inkoop, :hoeveelheid
  json.url boeking_url(boeking, format: :json)
end
