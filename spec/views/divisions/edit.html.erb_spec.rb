require 'spec_helper'

describe "divisions/edit" do
  before(:each) do
    @division = assign(:division, stub_model(Division,
      :division_name => "MyString"
    ))
  end

  it "renders the edit division form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", division_path(@division), "post" do
      assert_select "input#division_division_name[name=?]", "division[division_name]"
    end
  end
end
