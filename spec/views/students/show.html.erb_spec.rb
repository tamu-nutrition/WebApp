require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      UIN: "Uin",
      first_name: "First Name",
      last_name: "Last Name",
      meeting_points: 2,
      volunteer_points: 3,
      social_points: 4,
      total_points: 5,
      active_member: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uin/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/false/)
  end
end
