require 'spec_helper'

describe "players/show" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Surname/)
    rendered.should match(/Given Name/)
    rendered.should match(/Position/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
  end
end
