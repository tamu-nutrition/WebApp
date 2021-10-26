require 'rails_helper'

RSpec.describe "other_events/new", type: :view do
  before(:each) do
    assign(:other_event, OtherEvent.new(
      event_id: 1,
      point_worth: 1,
      event_type: "MyString",
      number_participation: 1
    ))
  end

  it "renders new other_event form" do
    render

    assert_select "form[action=?][method=?]", other_events_path, "post" do

      assert_select "input[name=?]", "other_event[event_id]"

      assert_select "input[name=?]", "other_event[point_worth]"

      assert_select "input[name=?]", "other_event[event_type]"

      assert_select "input[name=?]", "other_event[number_participation]"
    end
  end
end
