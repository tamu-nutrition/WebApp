require 'rails_helper'

RSpec.describe "Helps", type: :request do
  describe "GET /about" do
    it "returns http success" do
      get "/help/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/help/contact"
      expect(response).to have_http_status(:success)
    end
  end

end
