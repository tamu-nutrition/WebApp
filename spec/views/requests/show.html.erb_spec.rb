require 'rails_helper'

RSpec.describe "requests/show", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      event_id: 2,
      UIN: "Uin",
      points_requested: 3,
      request_time: "Request Time",
      approved: false,
      id: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Uin/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Request Time/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
