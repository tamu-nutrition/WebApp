require 'rails_helper'

RSpec.describe "meeting_participations/show", type: :view do
  before(:each) do
    @meeting_participation = assign(:meeting_participation, MeetingParticipation.create!(
      meeting_id: 2,
      UIN: "Uin"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Uin/)
  end
end
