require 'rails_helper'

RSpec.describe "other_events_lists/show", type: :view do
  before(:each) do
    @other_events_list = assign(:other_events_list, OtherEventsList.create!(
      event_id: "",
      point_worth: 2,
      event_type: "Event Type",
      number_participation: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Event Type/)
    expect(rendered).to match(/3/)
  end
end
