require "test_helper"

class ArtistProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_profile = artist_profiles(:one)
  end

  test "should get index" do
    get artist_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_profile_url
    assert_response :success
  end

  test "should create artist_profile" do
    assert_difference("ArtistProfile.count") do
      post artist_profiles_url, params: { artist_profile: { artist_id: @artist_profile.artist_id, description: @artist_profile.description, name: @artist_profile.name, photo_id: @artist_profile.photo_id } }
    end

    assert_redirected_to artist_profile_url(ArtistProfile.last)
  end

  test "should show artist_profile" do
    get artist_profile_url(@artist_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_profile_url(@artist_profile)
    assert_response :success
  end

  test "should update artist_profile" do
    patch artist_profile_url(@artist_profile), params: { artist_profile: { artist_id: @artist_profile.artist_id, description: @artist_profile.description, name: @artist_profile.name, photo_id: @artist_profile.photo_id } }
    assert_redirected_to artist_profile_url(@artist_profile)
  end

  test "should destroy artist_profile" do
    assert_difference("ArtistProfile.count", -1) do
      delete artist_profile_url(@artist_profile)
    end

    assert_redirected_to artist_profiles_url
  end
end
