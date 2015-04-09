require 'spec_helper'

describe Company do
  subject { create(:company) }

  it "requires a name" do
    company = Company.new(name: "")
    company.valid?  # populates errors
    expect(company.errors[:name].any?).to eq(true)
  end

  it "requires a description" do
    company = Company.new(description: "")
    company.valid?
    expect(company.errors[:description].any?).to eq(true)
  end

  it "requires a founded_in date" do
    company = Company.new(founded_in: "")
    company.valid?
    expect(company.errors[:founded_in].any?).to eq(true)
  end

  it "requires a website" do
    company = Company.new(website: "")
    company.valid?
    expect(company.errors[:website].any?).to eq(true)
  end

  it "requires a description over 24 characters" do
    company = Company.new(description: "X" * 24)
    company.valid?
    expect(company.errors[:description].any?).to eq(true)
  end

  it "accepts a positive staff number" do
    company = Company.new(staff: 10000000.00)
    company.valid?
    expect(company.errors[:total_gross].any?).to eq(false)
  end

  it "rejects a 0 staff number" do
    company = Company.new(staff: 0)
    company.valid?
    expect(company.errors[:staff].any?).to eq(true)
  end

  it "rejects a negative staff number" do
    company = Company.new(staff: -10000000.00)
    company.valid?
    expect(company.errors[:staff].any?).to eq(true)
  end

  it "accepts properly formatted image file names" do
    file_names = %w[e.png company.png company.jpg company.gif MOVIE.GIF]
    file_names.each do |file_name|
      company = Company.new(logo: file_name)
      company.valid?
      expect(company.errors[:logo].any?).to eq(false)
    end
  end

  it "rejects improperly formatted image file names" do
    file_names = %w[company .jpg .png .gif company.pdf company.doc]
    file_names.each do |file_name|
      company = Company.new(logo: file_name)
      company.valid?
      expect(company.errors[:logo].any?).to eq(true)
    end
  end

  it "is valid with example attributes" do
    company = Company.new(company_attributes)
    expect(company.valid?).to eq(true)
  end
end
