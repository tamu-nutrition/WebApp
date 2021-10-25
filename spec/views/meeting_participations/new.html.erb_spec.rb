require 'rails_helper'

RSpec.describe "meeting_participations/new", type: :view do
  before(:each) do
    assign(:meeting_participation, MeetingParticipation.new(
      meeting_id: 1,
      UIN: "MyString"
    ))
  end

  it "renders new meeting_participation form" do
    render

    assert_select "form[action=?][method=?]", meeting_participations_path, "post" do

      assert_select "input[name=?]", "meeting_participation[meeting_id]"

      assert_select "input[name=?]", "meeting_participation[UIN]"
    end
  end
end
