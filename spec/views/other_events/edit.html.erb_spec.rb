require 'rails_helper'

RSpec.describe "other_events/edit", type: :view do
  before(:each) do
    @other_event = assign(:other_event, OtherEvent.create!(
      event_id: 1,
      point_worth: 1,
      event_type: "MyString",
      number_participation: 1
    ))
  end

  it "renders the edit other_event form" do
    render

    assert_select "form[action=?][method=?]", other_event_path(@other_event), "post" do

      assert_select "input[name=?]", "other_event[event_id]"

      assert_select "input[name=?]", "other_event[point_worth]"

      assert_select "input[name=?]", "other_event[event_type]"

      assert_select "input[name=?]", "other_event[number_participation]"
    end
  end
end
