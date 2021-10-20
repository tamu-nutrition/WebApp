require "application_system_test_case"

class ParticipationsTest < ApplicationSystemTestCase
  setup do
    @participation = participations(:one)
  end

  test "visiting the index" do
    visit participations_url
    assert_selector "h1", text: "Participations"
  end

  test "creating a Participation" do
    visit participations_url
    click_on "New Participation"

    fill_in "Event", with: @participation.event_id
    fill_in "Uin", with: @participation.uin
    click_on "Create Participation"

    assert_text "Participation was successfully created"
    click_on "Back"
  end

  test "updating a Participation" do
    visit participations_url
    click_on "Edit", match: :first

    fill_in "Event", with: @participation.event_id
    fill_in "Uin", with: @participation.uin
    click_on "Update Participation"

    assert_text "Participation was successfully updated"
    click_on "Back"
  end

  test "destroying a Participation" do
    visit participations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Participation was successfully destroyed"
  end
end
