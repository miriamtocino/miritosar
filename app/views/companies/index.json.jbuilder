json.array!(@companies) do |company|
  json.extract! company, :id, :name, :website, :logo, :description, :founded_in, :staff
  json.url company_url(company, format: :json)
end
