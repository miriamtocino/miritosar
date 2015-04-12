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

def review_attributes(overrides = {})
  {
    name: "Roger Ebert",
    stars: 3,
    comment: "I laughed, I cried, I spilled my popcorn!"
  }.merge(overrides)
end

def user_attributes(overrides = {})
  {
    name: "Example User",
    email: "user@example.com",
    password: "secret",
    password_confirmation: "secret"
  }.merge(overrides)
end
