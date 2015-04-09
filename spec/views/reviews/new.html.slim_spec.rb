require 'spec_helper'

describe "reviews/new" do
  before(:each) do
    assign(:review, stub_model(Review,
      :name => "MyString",
      :stars => 1,
      :comment => "MyText",
      :company => nil
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reviews_path, "post" do
      assert_select "input#review_name[name=?]", "review[name]"
      assert_select "input#review_stars[name=?]", "review[stars]"
      assert_select "textarea#review_comment[name=?]", "review[comment]"
      assert_select "input#review_company[name=?]", "review[company]"
    end
  end
end
