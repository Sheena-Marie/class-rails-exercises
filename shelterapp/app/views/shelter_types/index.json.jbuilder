json.array!(@shelter_types) do |shelter_type|
  json.extract! shelter_type, :id, :name, :description
  json.url shelter_type_url(shelter_type, format: :json)
end
