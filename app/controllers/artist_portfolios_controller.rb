class ArtistPortfoliosController < ApplicationController
  before_action :set_artist_portfolio, only: %i[ show edit update destroy ]
  before_action :check_if_admin, only: [ :edit, :destroy, :new, :create, :update, :destroy ]
  skip_before_action :authenticate_user!

  # GET /artist_portfolios or /artist_portfolios.json
  def index
    @artist_portfolios = ArtistPortfolio.all
  end

  # GET /artist_portfolios/1 or /artist_portfolios/1.json
  def show
  end

  # GET /artist_portfolios/new
  def new
    @artist_portfolio = ArtistPortfolio.new
  end

  # GET /artist_portfolios/1/edit
  def edit
  end

  # POST /artist_portfolios or /artist_portfolios.json
  def create
    @artist_portfolio = ArtistPortfolio.new(artist_portfolio_params)

    respond_to do |format|
      if @artist_portfolio.save
        format.html { redirect_to @artist_portfolio, notice: "Artist portfolio was successfully created." }
        format.json { render :show, status: :created, location: @artist_portfolio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_portfolios/1 or /artist_portfolios/1.json
  def update
    respond_to do |format|
      if @artist_portfolio.update(artist_portfolio_params)
        format.html { redirect_to @artist_portfolio, notice: "Artist portfolio was successfully updated." }
        format.json { render :show, status: :ok, location: @artist_portfolio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_portfolios/1 or /artist_portfolios/1.json
  def destroy
    @artist_portfolio.destroy!

    respond_to do |format|
      format.html { redirect_to artist_portfolios_path, status: :see_other, notice: "Artist portfolio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_portfolio
      @artist_portfolio = ArtistPortfolio.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def artist_portfolio_params
      params.expect(artist_portfolio: [ :name, :description, :artist_id ])
    end
end
