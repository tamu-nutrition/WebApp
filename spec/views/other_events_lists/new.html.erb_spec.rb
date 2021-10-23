require 'rails_helper'

RSpec.describe "other_events_lists/new", type: :view do
  before(:each) do
    assign(:other_events_list, OtherEventsList.new(
      event_id: "",
      point_worth: 1,
      event_type: "MyString",
      number_participation: 1
    ))
  end

  it "renders new other_events_list form" do
    render

    assert_select "form[action=?][method=?]", other_events_lists_path, "post" do

      assert_select "input[name=?]", "other_events_list[event_id]"

      assert_select "input[name=?]", "other_events_list[point_worth]"

      assert_select "input[name=?]", "other_events_list[event_type]"

      assert_select "input[name=?]", "other_events_list[number_participation]"
    end
  end
end
