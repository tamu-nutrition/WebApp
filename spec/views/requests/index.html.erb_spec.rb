require 'rails_helper'

RSpec.describe "requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        event_id: 2,
        UIN: "Uin",
        points_requested: 3,
        request_time: "Request Time",
        approved: false,
        id: ""
      ),
      Request.create!(
        event_id: 2,
        UIN: "Uin",
        points_requested: 3,
        request_time: "Request Time",
        approved: false,
        id: ""
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Uin".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Request Time".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
