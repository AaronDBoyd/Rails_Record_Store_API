class SongsController < ApplicationController

  def index
    @album = Album.find(params[:album_id])
    @songs = @album.songs
    json_response(@songs)
  end 

  def show
    @album = Album.find(params[:album_id])
    @song = Song.find(params[:id])
    json_response(@song)
  end

  def create
    @album = Album.find(params[:album_id])
    # @song = Song.create!(song_params, album_id: @album.id)
    @song = Song.create!(song_params)
    json_response(@song, :created)
  end

  def update

  end

  def destroy

  end

  private
  def song_params
    params.permit(:title, :lyrics, :album_id)
  end

end