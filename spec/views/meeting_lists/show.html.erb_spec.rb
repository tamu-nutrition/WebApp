require 'rails_helper'

RSpec.describe "meeting_lists/show", type: :view do
  before(:each) do
    @meeting_list = assign(:meeting_list, MeetingList.create!(
      meeting_id: "",
      meeting_name: "Meeting Name",
      location: "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Meeting Name/)
    expect(rendered).to match(/Location/)
  end
end
