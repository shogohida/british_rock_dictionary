class SongsController < ApplicationController
  before_action :set_song, only: [:edit, :update, :destroy]

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = Song.new(song_params)
    @song.artist = @artist
    if @song.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_path(@song.artist)
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :minutes, :album_id)
  end

end
