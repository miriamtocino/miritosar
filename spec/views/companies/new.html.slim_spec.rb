require 'spec_helper'

describe "companies/new" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :website => "MyString",
      :logo => "MyString",
      :description => "MyText",
      :staff => 1
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", companies_path, "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "input#company_website[name=?]", "company[website]"
      assert_select "input#company_logo[name=?]", "company[logo]"
      assert_select "textarea#company_description[name=?]", "company[description]"
      assert_select "input#company_staff[name=?]", "company[staff]"
    end
  end
end
