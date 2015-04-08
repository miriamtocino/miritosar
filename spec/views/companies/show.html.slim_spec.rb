require 'spec_helper'

describe "companies/show" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "Name",
      :website => "Website",
      :logo => "Logo",
      :description => "MyText",
      :staff => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Website/)
    rendered.should match(/Logo/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
