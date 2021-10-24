require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        UIN: "Uin",
        first_name: "First Name",
        last_name: "Last Name",
        meeting_points: 2,
        volunteer_points: 3,
        social_points: 4,
        total_points: 5,
        active_member: false
      ),
      Student.create!(
        UIN: "Uin",
        first_name: "First Name",
        last_name: "Last Name",
        meeting_points: 2,
        volunteer_points: 3,
        social_points: 4,
        total_points: 5,
        active_member: false
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", text: "Uin".to_s, count: 2
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
