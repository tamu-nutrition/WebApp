require 'rails_helper'

RSpec.describe "officers/show", type: :view do
  before(:each) do
    @officer = assign(:officer, Officer.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
