require 'spec_helper'

describe "players/edit" do
  before(:each) do
    @player = assign(:player, stub_model(Player,
      :surname => "MyString",
      :given_name => "MyString",
      :position => "MyString",
      :at_bat => 1,
      :runs => 1,
      :hits => 1,
      :rbi => 1,
      :steals => 1,
      :errors => 1,
      :walks => 1
    ))
  end

  it "renders the edit player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", player_path(@player), "post" do
      assert_select "input#player_surname[name=?]", "player[surname]"
      assert_select "input#player_given_name[name=?]", "player[given_name]"
      assert_select "input#player_position[name=?]", "player[position]"
      assert_select "input#player_at_bat[name=?]", "player[at_bat]"
      assert_select "input#player_runs[name=?]", "player[runs]"
      assert_select "input#player_hits[name=?]", "player[hits]"
      assert_select "input#player_rbi[name=?]", "player[rbi]"
      assert_select "input#player_steals[name=?]", "player[steals]"
      assert_select "input#player_errors[name=?]", "player[errors]"
      assert_select "input#player_walks[name=?]", "player[walks]"
    end
  end
end
