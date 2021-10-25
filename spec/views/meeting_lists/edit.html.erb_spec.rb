require 'rails_helper'

RSpec.describe "meeting_lists/edit", type: :view do
  before(:each) do
    @meeting_list = assign(:meeting_list, MeetingList.create!(
      meeting_id: "",
      meeting_name: "MyString",
      location: "MyString"
    ))
  end

  it "renders the edit meeting_list form" do
    render

    assert_select "form[action=?][method=?]", meeting_list_path(@meeting_list), "post" do

      assert_select "input[name=?]", "meeting_list[meeting_id]"

      assert_select "input[name=?]", "meeting_list[meeting_name]"

      assert_select "input[name=?]", "meeting_list[location]"
    end
  end
end
