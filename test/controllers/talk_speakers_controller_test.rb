require "test_helper"

class TalkSpeakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @talk_speaker = talk_speakers(:one)
  end

  test "should get index" do
    get talk_speakers_url
    assert_response :success
  end

  test "should get new" do
    get new_talk_speaker_url
    assert_response :success
  end

  test "should create talk_speaker" do
    assert_difference('TalkSpeaker.count') do
      post talk_speakers_url, params: { talk_speaker: { speaker_id: @talk_speaker.speaker_id, talk_id: @talk_speaker.talk_id } }
    end

    assert_redirected_to talk_speaker_url(TalkSpeaker.last)
  end

  test "should show talk_speaker" do
    get talk_speaker_url(@talk_speaker)
    assert_response :success
  end

  test "should get edit" do
    get edit_talk_speaker_url(@talk_speaker)
    assert_response :success
  end

  test "should update talk_speaker" do
    patch talk_speaker_url(@talk_speaker), params: { talk_speaker: { speaker_id: @talk_speaker.speaker_id, talk_id: @talk_speaker.talk_id } }
    assert_redirected_to talk_speaker_url(@talk_speaker)
  end

  test "should destroy talk_speaker" do
    assert_difference('TalkSpeaker.count', -1) do
      delete talk_speaker_url(@talk_speaker)
    end

    assert_redirected_to talk_speakers_url
  end
end
