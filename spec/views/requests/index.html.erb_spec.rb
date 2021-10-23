require 'rails_helper'

<<<<<<< HEAD
RSpec.describe "requests/index.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"
=======
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
>>>>>>> 773b3ee2f2ba6be46519d552a1feae33a29d8d21
end
