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
    @song = Song.create!(song_params)
    json_response(@song, :created)
  end

  def update
    @song = Song.find(params[:id])
    @song.update!(song_params)
    json_response(@song)
  end

  def destroy
    @song = Song.find(params[:id])
    if @song.destroy
      render status: 200, json: {
        message: "This album has been destroyed successfully."
      }
    end
  end

  private
  def song_params
    params.permit(:title, :lyrics, :album_id)
  end

end