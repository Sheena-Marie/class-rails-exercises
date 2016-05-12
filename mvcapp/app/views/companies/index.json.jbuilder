json.array!(@companies) do |company|
  json.extract! company, :id, :name, :website, :num_of_employees
  json.url company_url(company, format: :json)
end
