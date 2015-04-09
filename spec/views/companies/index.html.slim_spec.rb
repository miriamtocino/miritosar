require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :website => "Website",
        :logo => "Logo",
        :description => "MyText",
        :staff => 1
      ),
      stub_model(Company,
        :name => "Name",
        :website => "Website",
        :logo => "Logo",
        :description => "MyText",
        :staff => 1
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select ".company-data>h3", :text => "Name".to_s, :count => 2
    assert_select ".company-data>p", :text => "Website".to_s, :count => 2
  end
end
