json.array!(@accounts) do |account|
  json.extract! account, :id, :user_id, :shipping_address, :phone
  json.url account_url(account, format: :json)
end
