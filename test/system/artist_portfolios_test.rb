require "application_system_test_case"

class ArtistPortfoliosTest < ApplicationSystemTestCase
  setup do
    @artist_portfolio = artist_portfolios(:one)
  end

  test "visiting the index" do
    visit artist_portfolios_url
    assert_selector "h1", text: "Artist portfolios"
  end

  test "should create artist portfolio" do
    visit artist_portfolios_url
    click_on "New artist portfolio"

    fill_in "Artist", with: @artist_portfolio.artist_id
    fill_in "Description", with: @artist_portfolio.description
    fill_in "Name", with: @artist_portfolio.name
    click_on "Create Artist portfolio"

    assert_text "Artist portfolio was successfully created"
    click_on "Back"
  end

  test "should update Artist portfolio" do
    visit artist_portfolio_url(@artist_portfolio)
    click_on "Edit this artist portfolio", match: :first

    fill_in "Artist", with: @artist_portfolio.artist_id
    fill_in "Description", with: @artist_portfolio.description
    fill_in "Name", with: @artist_portfolio.name
    click_on "Update Artist portfolio"

    assert_text "Artist portfolio was successfully updated"
    click_on "Back"
  end

  test "should destroy Artist portfolio" do
    visit artist_portfolio_url(@artist_portfolio)
    click_on "Destroy this artist portfolio", match: :first

    assert_text "Artist portfolio was successfully destroyed"
  end
end
