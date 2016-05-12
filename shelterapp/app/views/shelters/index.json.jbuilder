json.array!(@shelters) do |shelter|
  json.extract! shelter, :id, :user_id, :name, :description, :street, :suburb, :state, :postcode, :country, :latitude, :longitude, :website, :phone
  json.url shelter_url(shelter, format: :json)
end
