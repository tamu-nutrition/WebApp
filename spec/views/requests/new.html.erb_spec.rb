require 'rails_helper'

RSpec.describe "requests/new", type: :view do
  before(:each) do
    assign(:request, Request.new(
      event_id: 1,
      UIN: "MyString",
      points_requested: 1,
      request_time: "MyString",
      approved: false,
      id: ""
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input[name=?]", "request[event_id]"

      assert_select "input[name=?]", "request[UIN]"

      assert_select "input[name=?]", "request[points_requested]"

      assert_select "input[name=?]", "request[request_time]"

      assert_select "input[name=?]", "request[approved]"

      assert_select "input[name=?]", "request[id]"
    end
  end
end
