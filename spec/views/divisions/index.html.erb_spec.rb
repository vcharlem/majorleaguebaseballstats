require 'spec_helper'

describe "divisions/index" do
  before(:each) do
    assign(:divisions, [
      stub_model(Division,
        :division_name => "Division Name"
      ),
      stub_model(Division,
        :division_name => "Division Name"
      )
    ])
  end

  it "renders a list of divisions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Division Name".to_s, :count => 2
  end
end
