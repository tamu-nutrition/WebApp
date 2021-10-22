require 'rails_helper'

RSpec.describe "other_events_lists/edit", type: :view do
  before(:each) do
    @other_events_list = assign(:other_events_list, OtherEventsList.create!(
      event_id: "",
      point_worth: 1,
      event_type: "MyString",
      number_participation: 1
    ))
  end

  it "renders the edit other_events_list form" do
    render

    assert_select "form[action=?][method=?]", other_events_list_path(@other_events_list), "post" do

      assert_select "input[name=?]", "other_events_list[event_id]"

      assert_select "input[name=?]", "other_events_list[point_worth]"

      assert_select "input[name=?]", "other_events_list[event_type]"

      assert_select "input[name=?]", "other_events_list[number_participation]"
    end
  end
end
