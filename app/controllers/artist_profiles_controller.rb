class ArtistProfilesController < ApplicationController
  before_action :set_artist_profile, only: %i[ show edit update destroy ]
  before_action :check_if_admin, only: [:edit, :destroy, :new, :create, :update, :destroy]
  skip_before_action :authenticate_user!

  # GET /artist_profiles or /artist_profiles.json
  def index
    return render "errors/not_found" unless @artist_profiles
    @artist_profiles = ArtistProfile.all
  end

  # GET /artist_profiles/1 or /artist_profiles/1.json
  def show
  end

  # GET /artist_profiles/new
  def new
    @artist_profile = ArtistProfile.new
  end

  # GET /artist_profiles/1/edit
  def edit
  end

  # POST /artist_profiles or /artist_profiles.json
  def create
    @artist_profile = ArtistProfile.new(artist_profile_params)

    respond_to do |format|
      if @artist_profile.save
        format.html { redirect_to @artist_profile, notice: "Artist profile was successfully created." }
        format.json { render :show, status: :created, location: @artist_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_profiles/1 or /artist_profiles/1.json
  def update
    respond_to do |format|
      if @artist_profile.update(artist_profile_params)
        format.html { redirect_to @artist_profile, notice: "Artist profile was successfully updated." }
        format.json { render :show, status: :ok, location: @artist_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_profiles/1 or /artist_profiles/1.json
  def destroy
    @artist_profile.destroy!

    respond_to do |format|
      format.html { redirect_to artist_profiles_path, status: :see_other, notice: "Artist profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_profile
      @artist_profile = ArtistProfile.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def artist_profile_params
      params.expect(artist_profile: [ :name, :description, :artist_id, :photo_id ])
    end
end
