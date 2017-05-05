require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :surname => "Surname",
        :given_name => "Given Name",
        :position => "Position",
        :at_bat => 1,
        :runs => 2,
        :hits => 3,
        :rbi => 4,
        :steals => 5,
        :errors => 6,
        :walks => 7
      ),
      stub_model(Player,
        :surname => "Surname",
        :given_name => "Given Name",
        :position => "Position",
        :at_bat => 1,
        :runs => 2,
        :hits => 3,
        :rbi => 4,
        :steals => 5,
        :errors => 6,
        :walks => 7
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Given Name".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
  end
end
