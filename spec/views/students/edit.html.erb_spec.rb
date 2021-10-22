require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      UIN: "MyString",
      first_name: "MyString",
      last_name: "MyString",
      meeting_points: 1,
      volunteer_points: 1,
      social_points: 1,
      total_points: 1,
      active_member: false
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input[name=?]", "student[UIN]"

      assert_select "input[name=?]", "student[first_name]"

      assert_select "input[name=?]", "student[last_name]"

      assert_select "input[name=?]", "student[meeting_points]"

      assert_select "input[name=?]", "student[volunteer_points]"

      assert_select "input[name=?]", "student[social_points]"

      assert_select "input[name=?]", "student[total_points]"

      assert_select "input[name=?]", "student[active_member]"
    end
  end
end
