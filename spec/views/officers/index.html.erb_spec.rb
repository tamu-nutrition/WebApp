require 'rails_helper'

RSpec.describe "officers/index", type: :view do
  before(:each) do
    assign(:officers, [
      Officer.create!(),
      Officer.create!()
    ])
  end

  it "renders a list of officers" do
    render
  end
end
