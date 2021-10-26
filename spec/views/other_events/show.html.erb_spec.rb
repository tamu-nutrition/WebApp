require 'rails_helper'

RSpec.describe "other_events/show", type: :view do
  before(:each) do
    @other_event = assign(:other_event, OtherEvent.create!(
      event_id: 2,
      point_worth: 3,
      event_type: "Event Type",
      number_participation: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Event Type/)
    expect(rendered).to match(/4/)
  end
end
