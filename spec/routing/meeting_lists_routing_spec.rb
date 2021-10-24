require "rails_helper"

RSpec.describe MeetingListsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/meeting_lists").to route_to("meeting_lists#index")
    end

    it "routes to #new" do
      expect(get: "/meeting_lists/new").to route_to("meeting_lists#new")
    end

    it "routes to #show" do
      expect(get: "/meeting_lists/1").to route_to("meeting_lists#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/meeting_lists/1/edit").to route_to("meeting_lists#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/meeting_lists").to route_to("meeting_lists#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/meeting_lists/1").to route_to("meeting_lists#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/meeting_lists/1").to route_to("meeting_lists#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/meeting_lists/1").to route_to("meeting_lists#destroy", id: "1")
    end
  end
end
