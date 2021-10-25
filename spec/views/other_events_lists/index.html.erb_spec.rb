require 'rails_helper'

RSpec.describe "other_events_lists/index", type: :view do
  before(:each) do
    assign(:other_events_lists, [
      OtherEventsList.create!(
        event_id: "",
        point_worth: 2,
        event_type: "Event Type",
        number_participation: 3
      ),
      OtherEventsList.create!(
        event_id: "",
        point_worth: 2,
        event_type: "Event Type",
        number_participation: 3
      )
    ])
  end

  it "renders a list of other_events_lists" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Event Type".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
