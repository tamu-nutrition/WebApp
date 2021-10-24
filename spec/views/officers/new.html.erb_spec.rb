require 'rails_helper'

RSpec.describe "officers/new", type: :view do
  before(:each) do
    assign(:officer, Officer.new())
  end

  it "renders new officer form" do
    render

    assert_select "form[action=?][method=?]", officers_path, "post" do
    end
  end
end
