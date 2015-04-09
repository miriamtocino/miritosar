def company_attributes(overrides = {})
  {
    name: "Company 1",
    description: "This is the description of the company 1 and it should be longer than 25 characters.",
    website: "www.company1.com",
    staff: 3,
    logo: "default.png",
    founded_in: 2010
  }.merge(overrides)
end
