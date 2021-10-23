require 'rails_helper'

RSpec.describe "meeting_participations/edit", type: :view do
  before(:each) do
    @meeting_participation = assign(:meeting_participation, MeetingParticipation.create!(
      meeting_id: 1,
      UIN: "MyString"
    ))
  end

  it "renders the edit meeting_participation form" do
    render

    assert_select "form[action=?][method=?]", meeting_participation_path(@meeting_participation), "post" do

      assert_select "input[name=?]", "meeting_participation[meeting_id]"

      assert_select "input[name=?]", "meeting_participation[UIN]"
    end
  end
end
