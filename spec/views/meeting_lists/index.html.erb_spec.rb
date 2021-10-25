require 'rails_helper'

RSpec.describe "meeting_lists/index", type: :view do
  before(:each) do
    assign(:meeting_lists, [
      MeetingList.create!(
        meeting_id: "",
        meeting_name: "Meeting Name",
        location: "Location"
      ),
      MeetingList.create!(
        meeting_id: "",
        meeting_name: "Meeting Name",
        location: "Location"
      )
    ])
  end

  it "renders a list of meeting_lists" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Meeting Name".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
  end
end
