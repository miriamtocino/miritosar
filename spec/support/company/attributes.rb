def company_attributes(overrides = {})
  {
    name: "Company 1",
    description: "This is the description of the company 1.",
    website_url: "www.company1.com",
    staff: 3,
    founded_in: 2010
  }.merge(overrides)
end
