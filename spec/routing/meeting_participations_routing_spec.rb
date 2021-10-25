require "rails_helper"

RSpec.describe MeetingParticipationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/meeting_participations").to route_to("meeting_participations#index")
    end

    it "routes to #new" do
      expect(get: "/meeting_participations/new").to route_to("meeting_participations#new")
    end

    it "routes to #show" do
      expect(get: "/meeting_participations/1").to route_to("meeting_participations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/meeting_participations/1/edit").to route_to("meeting_participations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/meeting_participations").to route_to("meeting_participations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/meeting_participations/1").to route_to("meeting_participations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/meeting_participations/1").to route_to("meeting_participations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/meeting_participations/1").to route_to("meeting_participations#destroy", id: "1")
    end
  end
end
