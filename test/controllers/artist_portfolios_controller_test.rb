require "test_helper"

class ArtistPortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_portfolio = artist_portfolios(:one)
  end

  test "should get index" do
    get artist_portfolios_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_portfolio_url
    assert_response :success
  end

  test "should create artist_portfolio" do
    assert_difference("ArtistPortfolio.count") do
      post artist_portfolios_url, params: { artist_portfolio: { artist_id: @artist_portfolio.artist_id, description: @artist_portfolio.description, name: @artist_portfolio.name } }
    end

    assert_redirected_to artist_portfolio_url(ArtistPortfolio.last)
  end

  test "should show artist_portfolio" do
    get artist_portfolio_url(@artist_portfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_portfolio_url(@artist_portfolio)
    assert_response :success
  end

  test "should update artist_portfolio" do
    patch artist_portfolio_url(@artist_portfolio), params: { artist_portfolio: { artist_id: @artist_portfolio.artist_id, description: @artist_portfolio.description, name: @artist_portfolio.name } }
    assert_redirected_to artist_portfolio_url(@artist_portfolio)
  end

  test "should destroy artist_portfolio" do
    assert_difference("ArtistPortfolio.count", -1) do
      delete artist_portfolio_url(@artist_portfolio)
    end

    assert_redirected_to artist_portfolios_url
  end
end
