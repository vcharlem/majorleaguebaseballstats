require 'spec_helper'

describe "divisions/new" do
  before(:each) do
    assign(:division, stub_model(Division,
      :division_name => "MyString"
    ).as_new_record)
  end

  it "renders new division form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", divisions_path, "post" do
      assert_select "input#division_division_name[name=?]", "division[division_name]"
    end
  end
end
