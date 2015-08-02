json.array!(@place_parkings) do |place_parking|
  json.extract! place_parking, :id, :slot_number, :registration_number, :color
  json.url place_parking_url(place_parking, format: :json)
end
