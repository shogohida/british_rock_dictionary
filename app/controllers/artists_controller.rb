class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    # raise
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :years_active, :separated, :photo)
  end

end
