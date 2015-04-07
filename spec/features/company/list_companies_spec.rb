require 'spec_helper'

describe 'companies/' do

  it 'shows the companies' do
    visit companies_url
    expect(page).to have_text("3 Companies")
  end

end
