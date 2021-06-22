require "application_system_test_case"

class TalkSpeakersTest < ApplicationSystemTestCase
  setup do
    @talk_speaker = talk_speakers(:one)
  end

  test "visiting the index" do
    visit talk_speakers_url
    assert_selector "h1", text: "Talk Speakers"
  end

  test "creating a Talk speaker" do
    visit talk_speakers_url
    click_on "New Talk Speaker"

    fill_in "Speaker", with: @talk_speaker.speaker_id
    fill_in "Talk", with: @talk_speaker.talk_id
    click_on "Create Talk speaker"

    assert_text "Talk speaker was successfully created"
    click_on "Back"
  end

  test "updating a Talk speaker" do
    visit talk_speakers_url
    click_on "Edit", match: :first

    fill_in "Speaker", with: @talk_speaker.speaker_id
    fill_in "Talk", with: @talk_speaker.talk_id
    click_on "Update Talk speaker"

    assert_text "Talk speaker was successfully updated"
    click_on "Back"
  end

  test "destroying a Talk speaker" do
    visit talk_speakers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Talk speaker was successfully destroyed"
  end
end
