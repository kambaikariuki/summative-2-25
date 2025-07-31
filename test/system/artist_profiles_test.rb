require "application_system_test_case"

class ArtistProfilesTest < ApplicationSystemTestCase
  setup do
    @artist_profile = artist_profiles(:one)
  end

  test "visiting the index" do
    visit artist_profiles_url
    assert_selector "h1", text: "Artist profiles"
  end

  test "should create artist profile" do
    visit artist_profiles_url
    click_on "New artist profile"

    fill_in "Artist", with: @artist_profile.artist_id
    fill_in "Description", with: @artist_profile.description
    fill_in "Name", with: @artist_profile.name
    fill_in "Photo", with: @artist_profile.photo_id
    click_on "Create Artist profile"

    assert_text "Artist profile was successfully created"
    click_on "Back"
  end

  test "should update Artist profile" do
    visit artist_profile_url(@artist_profile)
    click_on "Edit this artist profile", match: :first

    fill_in "Artist", with: @artist_profile.artist_id
    fill_in "Description", with: @artist_profile.description
    fill_in "Name", with: @artist_profile.name
    fill_in "Photo", with: @artist_profile.photo_id
    click_on "Update Artist profile"

    assert_text "Artist profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist profile" do
    visit artist_profile_url(@artist_profile)
    click_on "Destroy this artist profile", match: :first

    assert_text "Artist profile was successfully destroyed"
  end
end
