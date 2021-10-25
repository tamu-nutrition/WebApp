require 'rails_helper'

RSpec.describe "meeting_lists/new", type: :view do
  before(:each) do
    assign(:meeting_list, MeetingList.new(
      meeting_id: "",
      meeting_name: "MyString",
      location: "MyString"
    ))
  end

  it "renders new meeting_list form" do
    render

    assert_select "form[action=?][method=?]", meeting_lists_path, "post" do

      assert_select "input[name=?]", "meeting_list[meeting_id]"

      assert_select "input[name=?]", "meeting_list[meeting_name]"

      assert_select "input[name=?]", "meeting_list[location]"
    end
  end
end
