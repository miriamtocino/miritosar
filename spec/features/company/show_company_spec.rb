require 'spec_helper'

describe 'Viewing an individual company, companies/:id' do

  it 'shows the company attributes' do
    company = Company.create(company_attributes)

    visit company_url(company)

    expect(page).to have_text(company.name)
    expect(page).to have_text(company.description[0..9])
    expect(page).to have_text(company.website_url)
    expect(page).to have_text(company.staff)
    expect(page).to have_text(company.founded_in)
  end

end
