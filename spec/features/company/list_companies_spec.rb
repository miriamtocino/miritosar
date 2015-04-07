require 'spec_helper'

describe 'companies/' do

  it 'shows the companies' do
    company1 = Company.create(name: "Company 1",
                      description: "This is the description of the company 1.",
                      website_url: "www.company1.com",
                      staff: 3,
                      founded_in: 2010)

    company2 = Company.create(name: "Company 2",
                      description: "This is the description of the company 2.",
                      website_url: "www.company2.com",
                      staff: 10,
                      founded_in: 2005)

    company3 = Company.create(name: "Company 3",
                      description: "This is the description of the company 3.",
                      website_url: "www.company3.com",
                      staff: 50,
                      founded_in: 1980)

    visit companies_url

    expect(page).to have_text("3 Companies")

    expect(page).to have_text(company1.name)
    expect(page).to have_text(company1.description[0..9])
    expect(page).to have_text(company1.staff)
    expect(page).to have_text(company1.founded_in)

    expect(page).to have_text(company2.name)
    expect(page).to have_text(company3.name)
  end

end
