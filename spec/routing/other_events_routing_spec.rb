require "rails_helper"

RSpec.describe OtherEventsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/other_events").to route_to("other_events#index")
    end

    it "routes to #new" do
      expect(get: "/other_events/new").to route_to("other_events#new")
    end

    it "routes to #show" do
      expect(get: "/other_events/1").to route_to("other_events#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/other_events/1/edit").to route_to("other_events#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/other_events").to route_to("other_events#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/other_events/1").to route_to("other_events#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/other_events/1").to route_to("other_events#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/other_events/1").to route_to("other_events#destroy", id: "1")
    end
  end
end
