require 'spec_helper'

describe 'A company' do
  it 'is a small office if the staff number is less than 15' do
    company = Company.new(staff: 10)
    expect(company.small?).to eq(true)
  end

  it 'is a medium office if the staff number is between 15 and 50' do
    company = Company.new(staff: 20)
    expect(company.medium?).to eq(true)
  end

  it 'is a large office if the staff number is greater than 50' do
    company = Company.new(staff: 60)
    expect(company.large?).to eq(true)
  end
end
