require 'rails_helper'

RSpec.describe "meeting_participations/index", type: :view do
  before(:each) do
    assign(:meeting_participations, [
      MeetingParticipation.create!(
        meeting_id: 2,
        UIN: "Uin"
      ),
      MeetingParticipation.create!(
        meeting_id: 2,
        UIN: "Uin"
      )
    ])
  end

  it "renders a list of meeting_participations" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Uin".to_s, count: 2
  end
end
