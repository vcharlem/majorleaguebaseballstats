require 'spec_helper'

describe "teams/show" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :city => "City",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    rendered.should match(/Name/)
  end
end
