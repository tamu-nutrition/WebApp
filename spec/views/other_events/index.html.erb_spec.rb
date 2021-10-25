require 'rails_helper'

RSpec.describe "other_events/index", type: :view do
  before(:each) do
    assign(:other_events, [
      OtherEvent.create!(
        event_id: 2,
        point_worth: 3,
        event_type: "Event Type",
        number_participation: 4
      ),
      OtherEvent.create!(
        event_id: 2,
        point_worth: 3,
        event_type: "Event Type",
        number_participation: 4
      )
    ])
  end

  it "renders a list of other_events" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Event Type".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
