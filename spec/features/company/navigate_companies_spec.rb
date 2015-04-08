require 'spec_helper'

describe "Navigating companies" do
  it 'allows navigation from the detail page to the listing page' do
    company = Company.create(company_attributes)

    visit company_url(company)
    click_link "All Companies"

    expect(current_path).to eq(companies_path)
  end

  it 'allows navigation from the listing page to the detail page' do
    company = Company.create(company_attributes)

    visit companies_url
    click_link company.name

    expect(current_path).to eq(company_path(company))
  end
end
