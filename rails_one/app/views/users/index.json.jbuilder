json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :age, :dob
  json.url user_url(user, format: :json)
end
